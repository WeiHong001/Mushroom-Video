"""Remove duplicate APK-merged attr definitions now supplied by official AARs."""
from pathlib import Path
import json
import xml.etree.ElementTree as ET

ROOT=Path(__file__).resolve().parents[1]
merger=ROOT/'app/build/intermediates/incremental/debug/mergeDebugResources/merger.xml'
tree=ET.parse(merger)
provided=set()
for data in tree.getroot().iter('dataSet'):
    for source in data.findall('source'):
        path=source.get('path','').replace('\\','/')
        if '/.gradle/caches/' not in path:continue
        for attr in source.iter('attr'):
            if attr.get('format') or len(attr):provided.add(attr.get('name'))
path=ROOT/'app/src/main/res/values/attrs.xml'
attrs=ET.parse(path)
removed=[]
for attr in list(attrs.getroot()):
    if attr.tag=='attr' and attr.get('name') in provided:
        removed.append(attr.get('name'));attrs.getroot().remove(attr)
assert 'radius1' not in removed and 'tl_iconHeight' not in removed
attrs.write(path,encoding='utf-8',xml_declaration=True)
if removed:
    report=ROOT/'docs/library-provided-attrs.json'
    previous=json.loads(report.read_text(encoding='utf-8')) if report.exists() else []
    report.write_text(json.dumps(sorted(set(previous+removed)),indent=2)+'\n',encoding='utf-8')
print('Official AAR attr definitions:',len(provided),'duplicate imported definitions removed:',len(removed))
