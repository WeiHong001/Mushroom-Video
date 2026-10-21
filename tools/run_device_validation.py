"""Replay original activities on an explicitly selected research emulator.

Build and install app + androidTest first. No physical-device or online mutations.
"""
from pathlib import Path
import argparse
import hashlib
import json
import re
import subprocess
import time

ROOT=Path(__file__).resolve().parents[1]
PKG='com.amogu6.tv.research'

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--serial',default='emulator-5580')
    parser.add_argument('--pages-only',action='store_true')
    args=parser.parse_args()
    adb=['adb','-s',args.serial]
    assert subprocess.check_output(adb+['shell','getprop','ro.kernel.qemu']).strip()==b'1', 'Select an emulator for these controlled tests'
    config=ROOT/'app/build/generated/source/buildConfig/debug/com/amogu6/tv/BuildConfig.java'
    assert 'boolean OFFLINE = true' in config.read_text(encoding='utf-8'), 'Only validate the offline fixture build'
    apk=ROOT/'app/build/outputs/apk/debug/app-debug.apk'
    apk_hash=hashlib.sha256(apk.read_bytes()).hexdigest()
    installed=subprocess.check_output(adb+['shell','pm','path',PKG]).decode().strip().removeprefix('package:')
    assert re.fullmatch(r'/data/app/[A-Za-z0-9_./=+~-]+/base\.apk',installed), 'Expected a single installed debug APK'
    installed_hash=subprocess.check_output(adb+['shell','sha256sum',installed]).decode().split()[0]
    assert installed_hash==apk_hash, 'Install the current debug APK before running validation'
    output=ROOT/'.local/validation-logs';output.mkdir(parents=True,exist_ok=True)
    results=[]

    def run(name,test,route=None):
        command=adb+['shell','am','instrument','-w','-e','class','com.mogu.research.'+test]
        if route:command+=['-e','route',route]
        command+=[PKG+'.test/androidx.test.runner.AndroidJUnitRunner']
        start=time.monotonic()
        try:
            response=subprocess.run(command,capture_output=True,timeout=85)
            text=response.stdout.decode('utf-8',errors='replace')+response.stderr.decode('utf-8',errors='replace')
        except subprocess.TimeoutExpired:
            text='Timed out'
            subprocess.run(adb+['shell','am','force-stop',PKG],capture_output=True,timeout=10)
        (output/(name+'.txt')).write_text(text,encoding='utf-8')
        ok=re.search(r'OK \((\d+) tests?\)',text)
        item=dict(name=name,passed=ok is not None,tests=int(ok.group(1)) if ok else 0,seconds=round(time.monotonic()-start,2))
        results.append(item)
        (ROOT/'docs/device-validation.json').write_text(json.dumps(dict(serial=args.serial,mode='synthetic-offline',apk_sha256=apk_hash,cases=results),ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        print(('PASS ' if item['passed'] else 'FAIL ')+name+' '+str(item['seconds'])+'s',flush=True)

    if not args.pages_only:
        run('media-and-api','MediaContractsTest')
        run('five-tabs','BusinessUiTest#allFiveOriginalTabsNavigateAndRender')
        run('playback','BusinessUiTest#normalAndEncryptedDetailsActuallyAdvancePlayback')
        run('drawing-and-gestures','BusinessUiTest#loadingDrawingAndLikeGesturePreserveTheirStateMachines')
        run('short-swipe','BusinessUiTest#shortVideoSwipeChangesPageAndKeepsOnePlayerActive')
        run('router-and-history','BusinessUiTest#originalRouterOpensDetailsAndPlaybackRecordsHistory')
    for route in json.loads((ROOT/'docs/routes.json').read_text(encoding='utf-8')):
        name=route['activity']
        assert re.fullmatch(r'com\.mogu\.tv\.[A-Za-z0-9_.]+',name)
        if name in ['com.mogu.tv.MainActivity','com.mogu.tv.ui.LoadingActivity']:continue
        run(name.rsplit('.',1)[-1],'BusinessUiTest#pageUnderTest',name)
    screenshots=ROOT/'.local/device-screenshots';screenshots.mkdir(exist_ok=True)
    subprocess.run(adb+['pull','/sdcard/Android/data/'+PKG+'/files/validation',str(screenshots)],capture_output=True,timeout=30)
    failed=[r['name'] for r in results if not r['passed']]
    print(json.dumps(dict(passed=len(results)-len(failed),total=len(results),failed=failed)),flush=True)
    if failed:raise SystemExit(1)

if __name__=='__main__':main()
