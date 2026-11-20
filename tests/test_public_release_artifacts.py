from __future__ import annotations
import hashlib, json, shutil, sys, tempfile, unittest
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'scripts'))
from verify_ramsey_r55_public_bundle import validate
from verify_trufflehog_history_exceptions import verify_scan_bytes

class PublicReleaseArtifactTests(unittest.TestCase):
    def test_ramsey_bundle_bindings(self):
        result=validate(ROOT/'reproduction/ramsey-r55-lean-v1')
        self.assertEqual(result['sources'],29)
        self.assertEqual(result['chunk_receipts'],27)
        self.assertTrue(result['candidate_only'])

    def test_ramsey_bundle_rejects_changed_source(self):
        with tempfile.TemporaryDirectory() as tmp:
            target=Path(tmp)/'bundle'
            shutil.copytree(ROOT/'reproduction/ramsey-r55-lean-v1',target)
            source=target/'MathCase/Ramsey/R55/FoundationV4.lean'
            source.write_bytes(source.read_bytes()+b'\n-- mutation\n')
            with self.assertRaisesRegex(ValueError,'source binding mismatch'):
                validate(target)

    def _finding(self, raw, line=602, verified=False):
        return {'DetectorName':'URI','DetectorType':17,'Verified':verified,'Raw':raw,'SourceMetadata':{'Data':{'Git':{'commit':'historical-test-commit','file':'fixture_test.go','line':line}}}}

    def test_history_exception_requires_exact_two_findings(self):
        expected=[]
        for raw,line in [('fixture-value-a',602),('fixture-value-b',242)]:
            expected.append({'detector_name':'URI','detector_type':17,'verified':False,'git_commit':'historical-test-commit','file':'fixture_test.go','line':line,'raw_value_sha256':hashlib.sha256(raw.encode()).hexdigest()})
        data='\n'.join(json.dumps(x) for x in [self._finding('fixture-value-a',602),self._finding('fixture-value-b',242)]).encode()
        self.assertEqual(verify_scan_bytes(data,expected),2)

    def test_history_exception_rejects_added_or_changed_finding(self):
        raw='fixture-value-a'; other='fixture-value-b'
        expected=[{'detector_name':'URI','detector_type':17,'verified':False,'git_commit':'historical-test-commit','file':'fixture_test.go','line':602,'raw_value_sha256':hashlib.sha256(raw.encode()).hexdigest()}]
        with self.assertRaisesRegex(ValueError,'finding set mismatch'):
            verify_scan_bytes(json.dumps(self._finding(raw,602)).encode()+b'\n'+json.dumps(self._finding(other,242)).encode(),expected)
        with self.assertRaisesRegex(ValueError,'finding set mismatch'):
            verify_scan_bytes(json.dumps(self._finding(raw,603)).encode(),expected)
        with self.assertRaisesRegex(ValueError,'finding set mismatch'):
            verify_scan_bytes(json.dumps(self._finding(raw,602,True)).encode(),expected)

    def test_history_exception_rejects_malformed_jsonl(self):
        with self.assertRaisesRegex(ValueError,'invalid scanner JSONL'):
            verify_scan_bytes(b'{broken',[])

if __name__=='__main__': unittest.main()
