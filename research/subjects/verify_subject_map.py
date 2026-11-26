import csv, html, re, sys
from collections import Counter
from pathlib import Path

MAP = Path(__file__).with_name('aixiv-subjects.tsv')
HEADING = re.compile(r'<h2 class="cat-group-title">.*?<span class="chip chip-(?:repro|pending)">(open|coming soon)</span></h2>', re.S)
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
        if any(not row[field].strip() for row in rows if field not in ('evidence',)):
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

    source = Path(snapshot_path).read_text(encoding='utf-8-sig')
    official = {}
    headings = list(HEADING.finditer(source))
    if not headings:
        fail('no subject-group status headings found')
    for index, heading in enumerate(headings):
        end = headings[index + 1].start() if index + 1 < len(headings) else len(source)
        group = source[heading.end():end]
        status = heading.group(1)
        for href_code, bold_code, raw_name in ITEM.findall(group):
            if href_code != bold_code:
                fail(f'official href/code mismatch for {bold_code}')
            if bold_code in official:
                fail(f'duplicate official code: {bold_code}')
            official[bold_code] = (html.unescape(raw_name).strip(), status)
    mapped = {row['code']: row for row in rows}
    if len(official) != 155:
        fail(f'official snapshot parser found {len(official)} subjects, expected 155')
    if official.keys() != mapped.keys():
        fail(f'code set differs; missing={sorted(official.keys()-mapped.keys())}; extra={sorted(mapped.keys()-official.keys())}')
    mismatches = []
    for code, row in mapped.items():
        source_name, source_status = official[code]
        if row['name'] != source_name or row['submissions'] != source_status:
            mismatches.append((code, row['name'], source_name, row['submissions'], source_status))
    if mismatches:
        fail(f'name/status mismatch: {mismatches[:5]}')
    print('PASS: 155 unique subjects; names and open/coming soon statuses match the supplied official listing snapshot; 40 open, 115 coming soon; topic/check text is unique.')


if __name__ == '__main__':
    if len(sys.argv) != 2:
        raise SystemExit('Usage: python -B verify_subject_map.py PATH_TO_OFFICIAL_CATEGORIES_HTML')
    main(sys.argv[1])
