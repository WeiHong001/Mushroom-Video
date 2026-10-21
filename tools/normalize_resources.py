"""Give aapt-generated '$' file resources legal source names, retaining their IDs."""
from pathlib import Path
import json

ROOT=Path(__file__).resolve().parents[1]
res=ROOT/'app/src/main/res'
renames={}
for source in list(res.rglob('*')):
    if source.is_file() and source.name.startswith('$'):
        new='recovered_'+source.stem[1:]
        renames[source.stem]=new
        target=source.with_name(new+source.suffix)
        assert source.resolve().is_relative_to(res.resolve()) and not target.exists()
        source.rename(target)
for path in list(res.rglob('*.xml'))+[ROOT/'app/resource-ids.txt']:
    old=path.read_text(encoding='utf-8')
    new=old
    for a,b in renames.items():
        new=new.replace('/'+a,'/'+b).replace('name="'+a+'"','name="'+b+'"')
    if new!=old:path.write_text(new,encoding='utf-8')
assert not any(p.name.startswith('$') for p in res.rglob('*') if p.is_file())
if renames:
    (ROOT/'docs/resource-renames.json').write_text(json.dumps(renames,indent=2)+'\n',encoding='utf-8')
print(f'Normalized {len(renames)} generated resource names; numeric IDs retained')
