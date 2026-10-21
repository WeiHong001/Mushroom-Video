"""Check the actual delivery APK: class coverage, duplicate DEX classes and IDs."""
from pathlib import Path
from zipfile import ZipFile
from collections import Counter
import hashlib
import json
import struct
import sys
import xml.etree.ElementTree as ET

ROOT=Path(__file__).resolve().parents[1]

def classes(data):
    assert data.startswith(b'dex\n') and len(data)>=112, 'Not a DEX file'
    u32=lambda offset:struct.unpack_from('<I',data,offset)[0]
    assert u32(32)==len(data), 'DEX size mismatch'
    strings_off,types_off=u32(60),u32(68)
    count,offset=u32(96),u32(100)
    found=[]
    for i in range(count):
        class_index=u32(offset+32*i)
        string_index=u32(types_off+4*class_index)
        pos=u32(strings_off+4*string_index)
        while data[pos]&128:pos+=1
        pos+=1
        end=data.index(0,pos)
        descriptor=data[pos:end].decode('utf-8')
        assert descriptor.startswith('L') and descriptor.endswith(';')
        found.append(descriptor[1:-1].replace('/','.'))
    return found

def verify(path):
    counts=Counter()
    dex_files=[]
    with ZipFile(path) as apk:
        for name in apk.namelist():
            if name.startswith('classes') and name.endswith('.dex'):
                data=apk.read(name)
                assert b'Compile-only business ABI must never be packaged' not in data, 'ABI stubs leaked into APK'
                assert b'Method not decompiled:' not in data, 'Decompiler failure leaked into runtime'
                counts.update(classes(data));dex_files.append(name)
    duplicates=[name for name,count in counts.items() if count!=1]
    assert not duplicates, 'Duplicate runtime classes: '+str(duplicates[:30])
    android='{http://schemas.android.com/apk/res/android}'
    manifest=ET.parse(ROOT/'app/src/main/AndroidManifest.xml')
    activities=[item.get(android+'name') for item in manifest.iter('activity')]
    missing=[name for name in activities if name not in counts]
    assert not missing, 'Missing activity implementations: '+str(missing)
    for name in ['com.mogu.tv.main.App','com.mogu.tv.MainActivity','com.mogu.tv.utils.exo.HlsMyPlaylistParser','com.kotlin.basiclib.utils.HttpMyUrlFetcher','com.alibaba.android.arouter.routes.ARouter$$Group$$module']:
        assert name in counts, 'Missing required integration: '+name
    variant=path.parent.name
    assert variant in ('debug','release'), 'Select an APK in its debug/release output directory'
    symbols=list((ROOT/'app/build/intermediates/runtime_symbol_list'/variant).rglob('R.txt'))
    assert symbols, 'No generated resource symbols for '+variant
    actual={}
    for line in symbols[0].read_text(encoding='utf-8').splitlines():
        parts=line.split()
        if len(parts)==4 and parts[0]=='int':actual[parts[1]+'/'+parts[2]]=int(parts[3],16)
    expected={}
    for line in (ROOT/'app/resource-ids.txt').read_text(encoding='utf-8').splitlines():
        if not line.strip():continue
        name,value=line.split(' = ')
        expected[name.split(':',1)[1]]=int(value,16)
    mismatches=[name for name,value in expected.items() if actual.get(name.replace('.','_'))!=value]
    assert not mismatches, 'Original resource IDs changed: '+str(mismatches[:30])
    result=dict(apk=str(path.relative_to(ROOT)),sha256=hashlib.sha256(path.read_bytes()).hexdigest(),
                dex_files=dex_files,classes=len(counts),manifest_activities_present=len(activities),
                original_company_activities_present=sum(name.startswith('com.mogu.tv.') for name in activities),
                duplicate_classes=0,compile_only_stubs_packaged=False,original_resource_ids_verified=len(expected))
    (ROOT/'docs/apk-verification.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(result,ensure_ascii=True))

if __name__=='__main__':
    verify(Path(sys.argv[1]).resolve() if len(sys.argv)>1 else ROOT/'app/build/outputs/apk/debug/app-debug.apk')
