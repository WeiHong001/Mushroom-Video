"""Generate explicitly synthetic protocol fixtures, never captured account data."""
from pathlib import Path
import json

ROOT = Path(__file__).resolve().parents[1]
MEDIA = '@MEDIA@'
user = dict(id=9001, name='离线研究员', avatar=MEDIA+'images/cover.png', gender=0, type=0)
videos = [dict(id=str(1001+i), title=f'离线样例 {i+1} · 播放与页面研究',
               cover=MEDIA+'images/'+['cover.png','normal-cover.bin','vlog-cover.bin'][i%3], duration=8, views=100+i, users=[user]) for i in range(8)]
details = dict(id='1001', title=videos[0]['title'], comments='1', favorites='0',
               created_at='1792555200', nubmer='RESEARCH-001', views='100',
               play_url=MEDIA+'media/sample.m3u8', labels=[dict(id='1', name='合成样本')],
               users=[{k:str(v) for k,v in user.items()}])
shorts = [dict(id=str(2001+i), title=f'短视频合成样例 {i+1}', cover=MEDIA+'images/cover.png',
               play_url=MEDIA+'media/sample.m3u8', comments='1', favorites='0', views='100',
               user={k:str(v) for k,v in user.items()}) for i in range(3)]
blogs = [dict(id=str(3001+i), detail=f'离线社区样本 {i+1}：九宫格、评论、图片预览和点赞交互研究。',
              created_at='1792555200', favorites=0, comments=1, isZan=0,
              user=user, images=[dict(id=j,path=MEDIA+'images/cover.png') for j in range(1,10 if i==0 else 5)],
              video='', dataType=1) for i in range(3)]
catalog = dict(
    _provenance='Synthetic offline research fixtures, generated locally; not a restored backend.',
    types=dict(list=[dict(id=str(i+1),name=n,child=[dict(id=str(10+i),name='合成样本')])
                     for i,n in enumerate(['推荐研究','分类研究','交互研究'])]),
    index=dict(list=[dict(id=1,name='离线 · 推荐样本'),dict(id=2,name='离线 · 界面研究')]),
    videos=dict(list=videos), details=details,
    shorts=dict(list=shorts,total=len(shorts)),
    vip=dict(list=[dict(ID=4001+i,title=f'精品合成样例 {i+1}',cover=MEDIA+'images/cover.png',
                        introduce='仅本机合成测试媒体，无购买或真实会员状态',play_url=MEDIA+'media/sample.m3u8',
                        dz_index=3,jq_index=3,tj_index=3,yz_index=3,unlock=False) for i in range(3)],total=3),
    blogs=dict(list=blogs),
    user=dict(id='9001',name='离线研究员',avatar=MEDIA+'images/cover.png',follower='0',integral='100'),
    other=dict(user, birthday='2000-01-01',follower=0,height=170,weight=60,introduction='本机合成研究账号',is_floowed=False),
    users=dict(list=[dict(user,integral=100)],total=1),
    labels=dict(list=[dict(id=i+1,name=n) for i,n in enumerate(['合成样本','播放器','自定义 View','缓存'])]),
    actors=dict(list=[dict(id=9001,name='合成演示者',avatar=MEDIA+'images/cover.png',**{'index':'Y'})],total=1),
    comments=dict(list=[dict(id=1,comment='离线研究评论，仅保存在本机。',created_at='1792555200',user=user,vod_id=1001)],total=1),
    ads={k:[] for k in ['activity','appcenter','banner','chatu','cover','detailssmall','homedialog','listchatu','listcover','mine','pianku','search','shequ','shortvideoimg','start']},
)
assert len(catalog['videos']['list']) == 8 and catalog['details']['play_url'].endswith('.m3u8')
assert len(catalog['blogs']['list'][0]['images']) == 9
assert all(v['duration'] == 8 for v in videos) and details['created_at'].isdigit()
out = ROOT/'app/src/main/assets/research/catalog.json'
out.parent.mkdir(parents=True, exist_ok=True)
out.write_text(json.dumps(catalog,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
