"""Supplement verify_apk.py with the actual APK resource table and merged Manifest.

No device behavior claims are made here. Run once per delivered APK, preserving
the JSON and raw aapt2 output in the batch's local evidence directory.
"""
import argparse
import hashlib
import json
from pathlib import Path
import re
import subprocess
import sys
import xml.etree.ElementTree as ET
from zipfile import ZipFile, ZIP_STORED

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'tools'))
from verify_apk import classes


def verify(apk_path, aapt2, manifest_path, output):
    resources = subprocess.check_output([str(aapt2), 'dump', 'resources', str(apk_path)])
    output.parent.mkdir(parents=True, exist_ok=True)
    raw_path = output.with_suffix('.resources.txt')
    raw_path.write_bytes(resources)
    actual = {}
    for identifier, name in re.findall(rb'resource (0x[0-9a-fA-F]+) ([^\s:]+/[^\s:]+)', resources):
        # AAPT spelling retains dots in styles and restored attrs; R uses underscores.
        normalized = name.decode().replace('.', '_')
        value = int(identifier, 16)
        assert normalized not in actual or actual[normalized] == value, 'Ambiguous resource name: ' + normalized
        actual[normalized] = value
    expected = {}
    for line in (ROOT / 'app/resource-ids.txt').read_text(encoding='utf-8').splitlines():
        if line.strip():
            name, identifier = line.split(' = ')
            expected[name.split(':', 1)[1].replace('.', '_')] = int(identifier, 16)
    mismatch = [name for name, identifier in expected.items() if actual.get(name) != identifier]
    assert not mismatch, 'Actual APK resource IDs differ: ' + str(mismatch[:30])
    with ZipFile(apk_path) as apk:
        assert apk.getinfo('resources.arsc').compress_type == ZIP_STORED
        names = set()
        for name in apk.namelist():
            if re.fullmatch(r'classes\d*\.dex', name):
                names.update(classes(apk.read(name)))
    android = '{http://schemas.android.com/apk/res/android}'
    manifest = ET.parse(manifest_path)
    package = manifest.getroot().get('package')
    activities = []
    for item in manifest.iter('activity'):
        name = item.get(android + 'name')
        if name.startswith('.'):
            name = package + name
        elif '.' not in name:
            name = package + '.' + name
        activities.append(name)
    missing = sorted(set(activities) - names)
    assert not missing, 'Merged Manifest Activity absent from APK: ' + str(missing)
    result = dict(apk=str(apk_path.relative_to(ROOT)), apk_sha256=hashlib.sha256(apk_path.read_bytes()).hexdigest(),
                  fixed_actual_resource_ids=len(expected), missing_or_changed_ids=[], resources_arsc_stored=True,
                  merged_manifest=str(manifest_path.relative_to(ROOT)),
                  merged_manifest_sha256=hashlib.sha256(manifest_path.read_bytes()).hexdigest(),
                  merged_manifest_activities=len(activities), missing_activities=[],
                  resource_dump_sha256=hashlib.sha256(resources).hexdigest(),
                  device_behavior_verified=False)
    output.write_text(json.dumps(result, ensure_ascii=False, indent=2)+'\n', encoding='utf-8')
    print(json.dumps(result, ensure_ascii=True))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--apk', type=Path, required=True)
    parser.add_argument('--aapt2', type=Path, required=True)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    verify(args.apk.resolve(), args.aapt2.resolve(), args.manifest.resolve(), args.output.resolve())
