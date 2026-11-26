import csv
import html
import re
import sys
from collections import Counter
from pathlib import Path
from urllib.parse import urlsplit

MAP = Path(__file__).with_name('aixiv-subjects.tsv')
HEADING = re.compile(r'<h2 class="cat-group-title">([^<]+)(?:<!--.*?-->)?\s*<span class="chip chip-(?:repro|pending)">(open|coming soon)</span></h2>', re.S)
ITEM = re.compile(r'<a[^>]*href="/list/([^"]+)"[^>]*><b>([^<]+)</b></a>\s*<span(?: class="muted(?: small)?")?>(.*?)</span>', re.S)


def fail(message):
    raise SystemExit(f'FAIL: {message}')


def main(snapshot_path):
    with MAP.open(encoding='utf-8-sig', newline='') as stream:
        rows = list(csv.DictReader(stream, delimiter='\t'))
    expected_fields = ['code', 'name', 'field', 'submissions', 'coverage', 'topic', 'check', 'evidence']
    if not rows or list(rows[0]) != expected_fields:
        fail('unexpected TSV header or no rows')
    for field in expected_fields:
        if any(not (row[field] or '').strip() for row in rows):
            fail(f'blank required field: {field}')
    for field in ('code', 'topic', 'check'):
        dupes = [value for value, count in Counter(row[field] for row in rows).items() if count != 1]
        if dupes:
            fail(f'duplicate {field}: {dupes[:3]}')
    if len(rows) != 155:
        fail(f'expected 155 rows; found {len(rows)}')
    counts = Counter(row['submissions'] for row in rows)
    if counts != {'open': 40, 'coming soon': 115}:
        fail(f'unexpected status counts: {dict(counts)}')
    accepted = {'Proposed', 'Checked case', 'Supporting artifact'}
    if any(row['coverage'] not in accepted for row in rows):
        fail('unknown MathCase evidence level')
    for row in rows:
        if row['coverage'] != 'Proposed':
            link = urlsplit(row['evidence'])
            if link.scheme not in ('http', 'https') or not link.hostname:
                fail(f"missing public evidence link for {row['code']}")

    source = Path(snapshot_path).read_text(encoding='utf-8-sig')
    official = {}
    headings = list(HEADING.finditer(source))
    if not headings:
        fail('no subject-group status headings found')
    for index, heading in enumerate(headings):
        end = headings[index + 1].start() if index + 1 < len(headings) else len(source)
        group = source[heading.end():end]
        field_name = html.unescape(heading.group(1)).strip()
        status = heading.group(2)
        for href_code, bold_code, raw_name in ITEM.findall(group):
            if href_code != bold_code:
                fail(f'official href/code mismatch for {bold_code}')
            if bold_code in official:
                fail(f'duplicate official code: {bold_code}')
            official[bold_code] = (html.unescape(raw_name).strip(), field_name, status)
    mapped = {row['code']: row for row in rows}
    if len(official) != 155:
        fail(f'official snapshot parser found {len(official)} subjects, expected 155')
    if official.keys() != mapped.keys():
        fail(f'code set differs; missing={sorted(official.keys()-mapped.keys())}; extra={sorted(mapped.keys()-official.keys())}')
    mismatches = []
    for code, row in mapped.items():
        actual = (row['name'], row['field'], row['submissions'])
        if actual != official[code]:
            mismatches.append((code, actual, official[code]))
    if mismatches:
        fail(f'name/field/status mismatch: {mismatches[:5]}')
    print('PASS: 155 unique subjects; fields, names and open/coming soon statuses match the supplied official listing snapshot; 40 open, 115 coming soon; topic/check text is unique.')


if __name__ == '__main__':
    if len(sys.argv) > 2:
        raise SystemExit('Usage: python -B verify_subject_map.py [categories.html]')
    archived = MAP.with_name('aixiv-categories-2026-11-26.html')
    main(sys.argv[1] if len(sys.argv) == 2 else archived)
