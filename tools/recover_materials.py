"""Import only allowlisted company sources/resources; the decoded APK stays local.

Usage: python tools/recover_materials.py DECODED_DIRECTORY JADX_DIRECTORY
"""
from pathlib import Path
import json
import re
import shutil
import sys
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
COMPANY = ('com/mogu/tv', 'com/kotlin/basiclib', 'com/qushare/news', 'com/wgq/wangeqiu')
# Small historical integrations without verified published artifacts. Major runtimes
# (AndroidX/Kotlin/ExoPlayer/Glide/HTTP/Rx) are always resolved independently.
HISTORICAL = (
    'com/chad/library', 'com/luck/picture', 'com/yalantis/ucrop',
    'com/scwang/smartrefresh', 'com/github/like',
    'com/github/lzyzsd',
    'com/qiniu/android', 'com/yanbo/lib_screen', 'com/youth/banner',
    'com/zhangke/websocket', 'com/azhon/appupdate',
    'com/uuzuche/lib_zxing',
    'org/fourthline', 'org/seamless',
    'me/yokeyword', 'net/lucode', 'site/gemus',
    'top/zibin', 'com/github/promeg', 'org/ahocorasick',
)

def write(path, content):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content, encoding='utf-8')

def recover(decoded, jadx):
    assert decoded.is_dir() and (jadx/'sources/com/mogu/tv').is_dir()
    main = ROOT/'app/src/main'
    if (main/'smali').exists() and any((main/'smali').rglob('*.smali')):
        raise FileExistsError('Recovery sources already exist; refusing to overwrite subsequent repairs')
    shutil.copytree(decoded/'res', main/'res', dirs_exist_ok=True)
    public = main/'res/values/public.xml'
    ids = ET.parse(public).getroot()
    write(ROOT/'app/resource-ids.txt', '\n'.join(
        f"com.amogu6.tv.research:{e.attrib['type']}/{e.attrib['name']} = {e.attrib['id']}"
        for e in ids) + '\n')
    public.unlink()
    shutil.copytree(decoded/'assets', main/'assets', dirs_exist_ok=True)
    inventory = {'company': [], 'historical_libraries': []}
    for folder in decoded.glob('smali*'):
        for p in folder.rglob('*.smali'):
            name = p.relative_to(folder).as_posix()
            category = 'company' if any(name.startswith(x+'/') for x in COMPANY) else 'historical_libraries' if any(name.startswith(x+'/') for x in HISTORICAL) else None
            # App-specific generated integration classes are company build output.
            if name in ['com/bumptech/glide/GeneratedAppGlideModuleImpl.smali', 'com/bumptech/glide/GeneratedRequestManagerFactory.smali',
                        'com/alibaba/android/arouter/routes/ARouter$$Root$$app.smali',
                        'com/alibaba/android/arouter/routes/ARouter$$Providers$$app.smali',
                        'com/alibaba/android/arouter/routes/ARouter$$Group$$module.smali']:
                category = 'company'
            if category:
                target = main/('smali' if category=='company' else 'recovered-libraries')/name
                target.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(p, target)
                inventory[category].append(name)
    for package in COMPANY:
        origin = jadx/'sources'/package
        if origin.exists():
            shutil.copytree(origin, ROOT/'reference/java'/package, dirs_exist_ok=True)
    manifest = (decoded/'AndroidManifest.xml').read_text(encoding='utf-8')
    manifest = re.sub(r'<uses-sdk[^>]*/>', '', manifest)
    manifest = re.sub(r'\s+(?:android:)?(?:compileSdkVersion|compileSdkVersionCodename|platformBuildVersionCode|platformBuildVersionName)="[^"]*"', '', manifest)
    manifest = re.sub(r' android:(?:versionCode|versionName)="[^"]*"', '', manifest)
    manifest = manifest.replace('package="com.amogu6.tv"', '')
    manifest = manifest.replace('android:label="@string/app_name"', 'android:label="蘑菇视频 · 离线研究"')
    manifest = manifest.replace('com.amogu6.tv.provider', '${applicationId}.provider')
    manifest = manifest.replace('com.amogu6.tv.fileProvider', '${applicationId}.fileProvider')
    manifest = manifest.replace('com.amogu6.tv.autosize-init-provider', '${applicationId}.autosize-init-provider')
    manifest = manifest.replace('com.amogu6.tv.androidx-startup', '${applicationId}.androidx-startup')
    manifest = re.sub(r'\s*<meta-data\s+android:name="UMENG_APPKEY"[\s\S]*?/>', '', manifest)
    # Merged APK had two providers registered for each authority. Keep one each.
    manifest = re.sub(r'\s*<provider\s+android:name="(?:com.azhon.appupdate.config.AppUpdateFileProvider|com.luck.picture.lib.PictureFileProvider)"[\s\S]*?</provider>', '', manifest)
    manifest = manifest.replace('android:allowBackup="true"', 'android:allowBackup="false"')
    write(main/'AndroidManifest.xml', manifest)
    write(ROOT/'docs/material-inventory.json', json.dumps(inventory, ensure_ascii=False, indent=2)+'\n')
    # Original package R includes the original styleable arrays, which aapt cannot
    # reconstruct from a compiled resource table. Keep these generated constants.
    for package in COMPANY:
        p = jadx/'sources'/package/'R.java'
        if p.exists():
            write(main/'java'/package/'R.java', p.read_text(encoding='utf-8'))
            for s in (main/'smali'/package).glob('R*.smali'):
                if s.stem=='R' or s.stem.startswith('R$'):
                    s.unlink()
    print({k: len(v) for k,v in inventory.items()})

if __name__ == '__main__':
    recover(Path(sys.argv[1]), Path(sys.argv[2]))
