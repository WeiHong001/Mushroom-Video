"""Save upstream license notices; a failed lookup is recorded, never guessed."""
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
from urllib.request import urlopen,Request
import hashlib
import json

ROOT=Path(__file__).resolve().parents[1]
SOURCES={
    'AndroidX':['androidx/androidx/androidx-main/LICENSE.txt'],
    'Kotlin':['JetBrains/kotlin/master/license/LICENSE.txt'],
    'ExoPlayer':['google/ExoPlayer/r2.18.1/LICENSE'],
    'GSYVideoPlayer':['CarGuo/GSYVideoPlayer/v8.3.4-release-jitpack/LICENSE'],
    'Glide':['bumptech/glide/v4.5.0/LICENSE'],
    'OkHttp':['square/okhttp/parent-3.12.0/LICENSE.txt','square/okhttp/master/LICENSE.txt'],
    'Retrofit':['square/retrofit/parent-2.9.0/LICENSE.txt','square/retrofit/master/LICENSE.txt'],
    'Gson':['google/gson/main/LICENSE'],
    'RxJava':['ReactiveX/RxJava/2.x/LICENSE'],
    'ARouter':['alibaba/ARouter/develop/LICENSE'],
    'BaseRecyclerViewAdapterHelper':['CymChad/BaseRecyclerViewAdapterHelper/master/LICENSE'],
    'PictureSelector':['LuckSiege/PictureSelector/master/LICENSE'],
    'uCrop':['Yalantis/uCrop/develop/LICENSE','Yalantis/uCrop/master/LICENSE'],
    'SmartRefreshLayout':['scwang90/SmartRefreshLayout/master/LICENSE'],
    'PatternLocker':['ihsg/PatternLocker/master/LICENSE'],
    'LikeButton':['jd-alexander/LikeButton/master/LICENSE'],
    'JsBridge':['lzyzsd/JsBridge/master/LICENSE'],
    'MarqueeView':['gongwen/MarqueeViewLibrary/master/LICENSE'],
    'HappyDNS':['qiniu/happy-dns-android/master/LICENSE'],
    'AndroidAutoSize':['JessYanCoding/AndroidAutoSize/master/LICENSE'],
    'Banner':['youth5201314/banner/master/LICENSE'],
    'AndroidWebSocket':['ZhangKe3016/AndroidWebSocket/master/LICENSE'],
    'AppUpdate':['azhon/AppUpdate/master/LICENSE'],
    'ZxingLibrary':['yipianfengye/android-zxingLibrary/master/LICENSE'],
    'Luban':['Curzibn/Luban/master/LICENSE'],
    'IndexableRecyclerView':['YoKeyword/IndexableRecyclerView/master/LICENSE'],
    'MagicIndicator':['hackware1993/MagicIndicator/master/LICENSE'],
    'TinyPinyin':['promeg/TinyPinyin/master/LICENSE'],
    'AhoCorasick':['robert-bor/aho-corasick/master/LICENSE.md'],
    'OpeningStartAnimation':['wongzy/FancyView/master/LICENSE'],
    'Seamless':['4thline/seamless/master/LICENSE.txt','4thline/seamless/master/LICENSE'],
}

def fetch(item):
    name,candidates=item
    output=ROOT/'third_party/licenses'/(name+'.txt')
    # Preserve manually verified README notices and archive-extracted licenses.
    if output.exists():
        data=output.read_bytes()
        saved=json.loads((ROOT/'third_party/license-sources.json').read_text(encoding='utf-8')).get(name,{})
        if data.startswith(b'Source: '):saved['url']=data.splitlines()[0][8:].decode()
        if 'url' not in saved:saved['url']='https://raw.githubusercontent.com/'+candidates[0]
        saved.update(sha256=hashlib.sha256(data).hexdigest(),status='notice-saved',local_file=output.relative_to(ROOT).as_posix())
        saved.pop('errors',None)
        return name,saved
    errors=[]
    for candidate in candidates:
        url='https://raw.githubusercontent.com/'+candidate
        try:
            data=urlopen(Request(url,headers={'User-Agent':'Mushroom-Recovery-License-Inventory'}),timeout=15).read()
            assert len(data)>100 and b'<html' not in data.lower()
            output.parent.mkdir(parents=True,exist_ok=True);output.write_bytes(data)
            return name,dict(url=url,sha256=hashlib.sha256(data).hexdigest(),status='notice-saved',local_file=output.relative_to(ROOT).as_posix())
        except Exception as error:errors.append(str(error))
    return name,dict(status='lookup-unresolved',errors=errors)

if __name__=='__main__':
    results=dict(ThreadPoolExecutor(max_workers=8).map(fetch,SOURCES.items()))
    existing=json.loads((ROOT/'third_party/license-sources.json').read_text(encoding='utf-8'))
    results={**existing,**results}
    (ROOT/'third_party/license-sources.json').write_text(json.dumps(results,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print({name:item['status'] for name,item in results.items()})
