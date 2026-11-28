import json
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
GRAPH = ROOT / "research" / "knowledge-graph-v1" / "knowledge-graph.json"


class KnowledgeGraphTest(unittest.TestCase):
    def test_schema_and_references_are_closed(self):
        graph = json.loads(GRAPH.read_text(encoding="utf-8"))
        self.assertEqual(graph["schema"], "mathcase-knowledge-graph-v1")
        nodes = graph["nodes"]
        node_ids = [node["id"] for node in nodes]
        self.assertEqual(len(node_ids), len(set(node_ids)))
        self.assertGreaterEqual(len(nodes), 1)
        self.assertGreaterEqual(len(graph["edges"]), 1)

        by_id = set(node_ids)
        for node in nodes:
            self.assertIn(node["kind"], {"question", "evidence", "limit", "method"})
            self.assertTrue(node["path"])
            self.assertTrue((ROOT / node["path"]).is_file(), node["path"])
        for edge in graph["edges"]:
            self.assertIn(edge["from"], by_id)
            self.assertIn(edge["to"], by_id)
            self.assertTrue(edge["relation"])

        transfer = next(node for node in nodes if node["id"] == "evidence-transfer-pilot")
        transfer_receipt = json.loads((ROOT / transfer["path"]).read_text(encoding="utf-8"))
        self.assertFalse(transfer_receipt["observed_uplift"])
        self.assertEqual(
            transfer_receipt["arms"]["control"],
            transfer_receipt["arms"]["saved_library"],
        )


if __name__ == "__main__":
    unittest.main()
