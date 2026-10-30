(function (root, factory) {
  const api = factory();
  if (typeof module === "object" && module.exports) module.exports = api;
  else root.MathCaseCaseStyleInspector = api;
})(typeof globalThis !== "undefined" ? globalThis : this, function () {
  "use strict";

  const REFERENCE_PATH = "config/taste-style-reference-proposal.json";
  const REFERENCE_SHA256 = "825e4a13b3391c8298d4c8b0ccc184bc85e953126a89962fb2dbd2f611518e0d";
  const REFERENCE_CANONICAL_SHA256 = "7ca6167aa6c9c54ef9a5e19f1eab7f7558e8c403237a5b15cb26f1995011aad8";
  const REFERENCE_ORIGINAL_SHA256 = "75b1ed41c4e2dc65da7608e792cf74f61fbb8edb768d9e8925ca6846847d5314";
  const REFERENCE_SEMANTIC_SHA256 = "6db1a5937bd2afea267c495e0db7319ae359cd9f57beec2e097fe0b1f1d7b52e";
  const TAXONOMY_PATH = "schemas/flywheel/m7-explanation-taxonomy-v2.schema.json";
  const TAXONOMY_SHA256 = "21359a115aac0222aa89701083bc0d15835999f183901ec8b37d696f055bf15a";
  const TAXONOMY_CANONICAL_SHA256 = "04cab1ff98632ed30dcb3eda03fcf6c54d84ba9db8b0ad694c367cc75781290d";
  const DIGEST = /^[0-9a-f]{64}$/;
  const TIERS = ["HIGH_SCHOOL", "ASSOCIATE", "BACHELOR", "MASTER", "DOCTORATE"];
  const PURPOSES = {
    overview: { label: "Get a concrete overview", primary: "HIGH_SCHOOL", compare: "ASSOCIATE", reason: "Start with the least formal saved version, then compare how the next tier adds structure." },
    argument: { label: "Follow the argument", primary: "ASSOCIATE", compare: "BACHELOR", reason: "Compare a step-by-step account with the more general structural view." },
    assumptions: { label: "Check assumptions and scope", primary: "MASTER", compare: "DOCTORATE", reason: "Inspect the named assumptions, boundary cases, and exact scope." },
    formal: { label: "Connect the idea to the formal proof", primary: "BACHELOR", compare: "MASTER", reason: "Compare the structural explanation with the tier that discusses formal references." },
    transfer: { label: "Look for a transfer question", primary: "DOCTORATE", compare: "ASSOCIATE", reason: "Compare the saved transfer targets with the earlier worked extension." }
  };
  const controllers = new WeakMap();

  function stableJson(value) {
    if (Array.isArray(value)) return "[" + value.map(stableJson).join(",") + "]";
    if (value && typeof value === "object") {
      return "{" + Object.keys(value).sort().map(key => JSON.stringify(key) + ":" + stableJson(value[key])).join(",") + "}";
    }
    return JSON.stringify(value);
  }

  async function sha256Bytes(bytes) {
    const cryptoApi = globalThis.crypto;
    if (!cryptoApi?.subtle) throw new Error("Web Crypto is unavailable in this preview.");
    const digest = await cryptoApi.subtle.digest("SHA-256", bytes);
    return Array.from(new Uint8Array(digest), byte => byte.toString(16).padStart(2, "0")).join("");
  }

  async function sha256Text(value) {
    return sha256Bytes(new TextEncoder().encode(String(value)));
  }

  function validatePlaybook(playbook) {
    if (!playbook || playbook.schema_version !== "mathcase-taste-style-reference-proposal-v1"
      || playbook.record_view !== "NARRATIVE_ONLY_RELEASE_VIEW" || playbook.original_record_sha256 !== REFERENCE_ORIGINAL_SHA256
      || !Array.isArray(playbook.examples) || playbook.examples.length !== 16
      || playbook.counts?.examples !== 16 || playbook.counts?.versions !== 33
      || playbook.evidence_boundary?.status !== "REFERENCE_PROPOSAL_ONLY"
      || playbook.evidence_boundary?.locked_evaluation_bundles_opened !== false
      || playbook.evidence_boundary?.paid_calls !== 0) {
      throw new Error("The pinned style reference does not match the candidate-only 16-example proposal.");
    }
    const ids = new Set();
    let versionCount = 0;
    for (const example of playbook.examples) {
      if (!example || typeof example.id !== "string" || !/^TS\d{2}$/.test(example.id) || ids.has(example.id)
        || typeof example.title !== "string" || typeof example.claim !== "string"
        || !Array.isArray(example.domains) || !Array.isArray(example.features)
        || !Array.isArray(example.prerequisites) || !Array.isArray(example.methods)
        || !Array.isArray(example.versions) || example.versions.length < 1
        || typeof example.trap !== "string" || typeof example.transfer !== "string"
        || example.status !== "ORIGINAL_EXPOSITION_CANDIDATE"
        || example.tag_status !== "PROPOSED_SEMANTIC_TAGS_NOT_CANONICAL_IDS"
        || example.preference_status !== "UNRATED_CANDIDATE"
        || example.lean_verification !== "NOT_RUN"
        || example.independent_mathematical_review !== "NOT_RECORDED"
        || example.reader_understanding_measurement !== "NOT_RUN") {
        throw new Error("A style example is malformed, duplicated, or has lost its candidate-only boundary.");
      }
      ids.add(example.id);
      for (const version of example.versions) {
        if (!version || typeof version.name !== "string" || typeof version.kind !== "string"
          || typeof version.method !== "string" || typeof version.mode !== "string"
          || typeof version.text !== "string" || typeof version.best_for !== "string"
          || typeof version.tradeoff !== "string") {
          throw new Error("A style reference version is missing its exact text or comparison fields.");
        }
        versionCount += 1;
      }
    }
    if (versionCount !== 33) throw new Error("The pinned playbook no longer contains exactly 33 versions.");
    return { exampleCount: ids.size, versionCount };
  }

  function moveFamiliesFromSchema(schema) {
    const families = schema?.properties?.record?.properties?.moves?.items?.properties?.move_family?.enum;
    const expected = ["PROOF_ROADMAP", "DEFINITION", "MOTIVATION", "INTUITION", "ANALOGY", "WORKED_EXAMPLE", "INFERENCE_BRIDGE", "BOUNDARY_CASE", "CANONICAL_CONTEXT", "SUMMARY", "OTHER"];
    if (schema?.$id !== "https://mathcase.invalid/schemas/flywheel/m7-explanation-taxonomy-v2.schema.json"
      || schema?.title !== "MathCase M7 explanation-move candidates with reopened five-tier evidence"
      || !Array.isArray(families) || stableJson(families) !== stableJson(expected)) {
      throw new Error("The pinned M7 taxonomy v2 move-family vocabulary is unsupported.");
    }
    return families.slice();
  }

  function assertPacket(packet) {
    if (!packet || packet.schema_version !== "mathcase-review-packet-v1" || packet.status !== "DRAFT"
      || typeof packet.case_id !== "string" || typeof packet.problem_id !== "string"
      || typeof packet.selected_run_id !== "string" || !DIGEST.test(packet.packet_sha256 || "")
      || !Array.isArray(packet.expositions) || packet.expositions.length !== 5) {
      throw new Error("The exact saved case packet or all five explanation tiers are missing.");
    }
    const bindings = packet.content_bindings || {}, proof = packet.proof || {}, run = proof.m4_run || {};
    const metrics = proof.structure_metrics || {}, m6 = packet.proof_lineage?.m6_metrics || {};
    if (!DIGEST.test(bindings.informal_statement_sha256 || "") || !DIGEST.test(bindings.lean_statement_sha256 || "")
      || !DIGEST.test(bindings.proof_sha256 || "") || !DIGEST.test(bindings.m4_receipt_sha256 || "")
      || proof.sha256 !== bindings.proof_sha256 || !DIGEST.test(proof.sha256 || "")
      || run.run_id !== packet.selected_run_id || run.status !== "PASSED"
      || run.kernel_passed !== true || run.axioms_passed !== true
      || run.proof_sha256 !== proof.sha256 || run.statement_sha256 !== bindings.m4_statement_sha256
      || run.receipt_sha256 !== bindings.m4_receipt_sha256
      || metrics.state !== "EXECUTED_PASS" || m6.linked_to_selected_run !== true
      || m6.source_matches_selected_m4_generated_source !== true
      || metrics.receipt_sha256 !== bindings.m6_metrics_receipt_sha256
      || metrics.run_receipt_sha256 !== bindings.m6_run_receipt_sha256) {
      throw new Error("The selected M4 proof or exact-source M6 observations do not match this packet.");
    }
    const found = new Set(packet.expositions.map(tier => tier?.tier));
    if (TIERS.some(tier => !found.has(tier)) || found.size !== TIERS.length) {
      throw new Error("The saved explanation tiers are not the five supported audience tiers.");
    }
  }

  function crosswalkEntries(viewParts, families) {
    const entries = [];
    function add(axis, label, target, status, explanation, caseTier = null) {
      entries.push({ axis, case_tier: caseTier, proposed_label: String(label), m7_move_family: target, status, explanation });
    }
    for (const tier of viewParts.tiers) {
      const output = tier.structured_output || {};
      for (const field of ["motivation", "example", "worked_variant", "boundary_case", "trap", "stopping_point"]) {
        if (typeof output[field] !== "string" || !output[field]) continue;
        const mapping = {
          motivation: ["MOTIVATION", "Same named move family; still an unreviewed candidate crosswalk."],
          example: ["WORKED_EXAMPLE", "An example field is a proposed worked-example move, not a reviewed M7 annotation."],
          worked_variant: ["WORKED_EXAMPLE", "A worked extension is a proposed worked-example move, not a reviewed M7 annotation."],
          boundary_case: ["BOUNDARY_CASE", "A boundary field is a proposed boundary-case move, not a reviewed M7 annotation."],
          trap: ["BOUNDARY_CASE", "A warning/trap may fit a boundary-case move; the mapping remains unreviewed."],
          stopping_point: ["SUMMARY", "A stopping-point field may serve as a summary; the mapping remains unreviewed."]
        }[field];
        add("case_tier_field", field, families.includes(mapping[0]) ? mapping[0] : null, "UNREVIEWED_CROSSWALK_PROPOSAL", mapping[1], tier.tier);
      }
      for (const field of ["transfer", "transfer_targets", "precise_lemmas", "assumed_background"]) {
        if (output[field] !== undefined) add("case_tier_field", field, null, "UNMAPPED_PROPOSAL", "This field is a prompt, prerequisite, or formal reference; M7 move-family equivalence is not inferred here.", tier.tier);
      }
    }
    for (const [axis, values, explanation] of [
      ["domain", viewParts.reference.domains, "Problem domain is not an explanation move."],
      ["feature", viewParts.reference.features, "Problem structure is not an explanation move."],
      ["proof_method", viewParts.reference.methods.concat([viewParts.version.method]), "Proof methods are not Lean tactic labels or M7 exposition moves."],
      ["presentation_kind_mode", [viewParts.version.kind, viewParts.version.mode], "Presentation kind and mode are not canonical M7 move-family IDs."],
      ["transfer_question", [viewParts.reference.transfer], "A transfer prompt is kept separate from the M7 move-family vocabulary."]
    ]) {
      for (const label of new Set(values.filter(value => typeof value === "string" && value))) {
        add(axis, label, null, "UNMAPPED_PROPOSAL", explanation);
      }
    }
    if (typeof viewParts.reference.trap === "string" && viewParts.reference.trap) {
      add("reference_field", "trap", families.includes("BOUNDARY_CASE") ? "BOUNDARY_CASE" : null,
        "UNREVIEWED_CROSSWALK_PROPOSAL", "A warning may fit a boundary-case move; it is not a reviewed M7 annotation.");
    }
    return entries;
  }

  async function buildView(packet, playbook, taxonomySchema, selection, options = {}) {
    assertPacket(packet);
    validatePlaybook(playbook);
    const sha = options.sha256 || sha256Text;
    const referenceSha = options.referenceSha256 || REFERENCE_SHA256;
    const taxonomySha = options.taxonomySha256 || TAXONOMY_SHA256;
    if (referenceSha !== REFERENCE_SHA256 || taxonomySha !== TAXONOMY_SHA256) throw new Error("A pinned style reference or M7 schema digest changed.");
    if (await sha(stableJson(playbook)) !== REFERENCE_CANONICAL_SHA256
      || await sha(stableJson(taxonomySchema)) !== TAXONOMY_CANONICAL_SHA256) {
      throw new Error("The parsed style reference or M7 schema differs from its pinned canonical content.");
    }
    const { purpose, record_view, original_record_sha256, ...referenceSemantics } = playbook;
    if (await sha(stableJson(referenceSemantics)) !== REFERENCE_SEMANTIC_SHA256) {
      throw new Error("The release view changed the retained mathematical reference content.");
    }
    const families = moveFamiliesFromSchema(taxonomySchema);
    const packetBody = { ...packet };
    delete packetBody.packet_sha256;
    if (await sha(stableJson(packetBody)) !== packet.packet_sha256) throw new Error("The selected review packet failed its content hash check.");
    for (const tier of packet.expositions) {
      if (await sha(tier.text) !== tier.text_sha256
        || await sha(stableJson(tier.structured_output)) !== tier.structured_output_sha256
        || packet.content_bindings.tier_text_sha256?.[tier.tier] !== tier.text_sha256
        || packet.content_bindings.tier_structure_sha256?.[tier.tier] !== tier.structured_output_sha256) {
        throw new Error("A saved explanation tier does not match its exact packet hashes.");
      }
    }
    if (!selection || !Object.hasOwn(PURPOSES, selection.purpose)
      || !TIERS.includes(selection.primaryTier) || !TIERS.includes(selection.compareTier)
      || selection.primaryTier === selection.compareTier || !/^TS\d{2}$/.test(selection.exampleId)
      || !Number.isInteger(selection.versionIndex) || selection.versionIndex < 0) {
      throw new Error("The selected reading purpose, tiers, or reference version is invalid.");
    }
    const example = playbook.examples.find(item => item.id === selection.exampleId);
    const version = example?.versions?.[selection.versionIndex];
    if (!example || !version) throw new Error("The selected playbook example or version does not exist.");
    const tiers = [selection.primaryTier, selection.compareTier].map(name => {
      const tier = packet.expositions.find(item => item.tier === name);
      return {
        tier: tier.tier,
        text: tier.text,
        text_sha256: tier.text_sha256,
        structured_output: tier.structured_output,
        structured_output_sha256: tier.structured_output_sha256,
        assumed_background: Array.isArray(tier.structured_output.assumed_background) ? tier.structured_output.assumed_background : []
      };
    });
    const reference = {
      id: example.id,
      title: example.title,
      claim: example.claim,
      domains: example.domains,
      features: example.features,
      prerequisites: example.prerequisites,
      methods: example.methods,
      trap: example.trap,
      transfer: example.transfer,
      status: example.status,
      statement_status: example.statement_status,
      preference_status: example.preference_status,
      lean_verification: example.lean_verification,
      independent_mathematical_review: example.independent_mathematical_review,
      reader_understanding_measurement: example.reader_understanding_measurement,
      evaluation_overlap: example.evaluation_overlap,
      exact_source_item_clearance: example.exact_source_item_clearance,
      applicability: example.applicability,
      example_sha256: await sha(stableJson(example)),
      version_index: selection.versionIndex,
      version: { ...version, version_sha256: await sha(stableJson(version)), text_sha256: await sha(version.text) }
    };
    const viewParts = { tiers, reference, version };
    const base = {
      schema_version: "mathcase-case-style-view-v1",
      status: "CANDIDATE_PRESENTATION_ONLY",
      case_binding: {
        case_id: packet.case_id,
        problem_id: packet.problem_id,
        source_revision: packet.source_statement?.original_source?.revision || null,
        source_sha256: packet.content_bindings.original_source_sha256 || null,
        informal_statement_sha256: packet.content_bindings.informal_statement_sha256,
        lean_statement_sha256: packet.content_bindings.lean_statement_sha256,
        selected_run_id: packet.selected_run_id,
        proof_sha256: packet.proof.sha256,
        m4_receipt_sha256: packet.proof.m4_run.receipt_sha256,
        m6_metrics_receipt_sha256: packet.proof.structure_metrics.receipt_sha256,
        m6_run_receipt_sha256: packet.proof.structure_metrics.run_receipt_sha256,
        packet_sha256: packet.packet_sha256
      },
      selection: { purpose: selection.purpose, primary_tier: selection.primaryTier, comparison_tier: selection.compareTier },
      purpose_guidance: PURPOSES[selection.purpose],
      saved_case_tiers: tiers,
      reference_binding: {
        source_path: REFERENCE_PATH,
        source_sha256: referenceSha,
        record_view: playbook.record_view,
        original_record_sha256: REFERENCE_ORIGINAL_SHA256,
        schema_version: playbook.schema_version,
        example: reference
      },
      m7_taxonomy: {
        schema_path: TAXONOMY_PATH,
        schema_sha256: taxonomySha,
        taxonomy_version: "mathcase-taxonomy-v1",
        move_families: families,
        crosswalk_status: "UNREVIEWED_PROPOSAL_ONLY",
        crosswalk: crosswalkEntries(viewParts, families)
      },
      evidence_boundaries: {
        prose: "Exact saved case text and exposed reference text; neither is rewritten by this selector.",
        preference: "UNRATED_CANDIDATE; selecting a reading purpose is not a quality rating or preference label.",
        proof_validity: "Inherited only from the exact selected M4 receipt bound above; the separate reference has no proof check.",
        learning: "NOT_MEASURED; no comprehension or transfer result is recorded.",
        taxonomy: "No production M7 record, accepted move, gate change, or training input is created by this view."
      }
    };
    return { ...base, view_sha256: await sha(stableJson(base)) };
  }

  async function validateView(view, packet, playbook, taxonomySchema, options = {}) {
    if (!view || view.schema_version !== "mathcase-case-style-view-v1" || !DIGEST.test(view.view_sha256 || "")) {
      throw new Error("The serialized case-style view is missing or malformed.");
    }
    const { view_sha256: suppliedHash, ...body } = view;
    const sha = options.sha256 || sha256Text;
    if (await sha(stableJson(body)) !== suppliedHash) throw new Error("The serialized case-style view digest does not match its bytes.");
    const selection = {
      purpose: view.selection?.purpose,
      primaryTier: view.selection?.primary_tier,
      compareTier: view.selection?.comparison_tier,
      exampleId: view.reference_binding?.example?.id,
      versionIndex: view.reference_binding?.example?.version_index
    };
    const expected = await buildView(packet, playbook, taxonomySchema, selection, options);
    if (stableJson(expected) !== stableJson(view)) throw new Error("The serialized view points to different case, run, proof, tier, reference, or M7 schema bytes.");
    return expected;
  }

  function addText(documentObject, parent, tag, value, className) {
    const node = documentObject.createElement(tag);
    node.textContent = String(value ?? "");
    if (className) node.className = className;
    parent.appendChild(node);
    return node;
  }

  function addList(documentObject, parent, values) {
    const list = documentObject.createElement("ul");
    for (const value of values || []) addText(documentObject, list, "li", value);
    parent.appendChild(list);
  }

  function renderTierCard(documentObject, target, title, tier) {
    target.replaceChildren();
    addText(documentObject, target, "h5", title + " · saved " + tier.tier.replace(/_/g, " "));
    addText(documentObject, target, "p", "Exact saved explanation · candidate text, not independently reviewed.", "case-style-status");
    if (tier.assumed_background.length) {
      addText(documentObject, target, "strong", "Assumed background");
      addList(documentObject, target, tier.assumed_background);
    }
    const pre = documentObject.createElement("pre");
    pre.textContent = tier.text;
    target.appendChild(pre);
    const details = documentObject.createElement("details");
    addText(documentObject, details, "summary", "Exact tier and structured-output hashes");
    addText(documentObject, details, "p", "Text SHA-256: " + tier.text_sha256);
    addText(documentObject, details, "p", "Structured output SHA-256: " + tier.structured_output_sha256);
    target.appendChild(details);
  }

  function renderReference(documentObject, target, reference) {
    target.replaceChildren();
    addText(documentObject, target, "h5", "Style reference " + reference.id + " · " + reference.title);
    addText(documentObject, target, "p", "Different mathematical claim. This is a style reference, not an alternate proof or explanation of the selected case.", "case-style-boundary");
    addText(documentObject, target, "strong", "Reference claim");
    addText(documentObject, target, "p", reference.claim);
    addText(documentObject, target, "strong", "Domains");
    addText(documentObject, target, "p", reference.domains.join(" · "));
    addText(documentObject, target, "strong", "Problem features");
    addText(documentObject, target, "p", reference.features.join(" · "));
    addText(documentObject, target, "strong", "Prerequisites");
    addText(documentObject, target, "p", reference.prerequisites.join(" · "));
    addText(documentObject, target, "strong", "Candidate proof methods · not tactic labels");
    addText(documentObject, target, "p", reference.methods.join(" · "));
    addText(documentObject, target, "strong", "Version " + (reference.version_index + 1) + " · " + reference.version.name);
    addText(documentObject, target, "p", "Presentation kind: " + reference.version.kind + " · mode: " + reference.version.mode);
    const text = documentObject.createElement("pre");
    text.textContent = reference.version.text;
    target.appendChild(text);
    addText(documentObject, target, "strong", "Best suited for");
    addText(documentObject, target, "p", reference.version.best_for);
    addText(documentObject, target, "strong", "Tradeoff");
    addText(documentObject, target, "p", reference.version.tradeoff);
    addText(documentObject, target, "strong", "Trap to avoid");
    addText(documentObject, target, "p", reference.trap);
    addText(documentObject, target, "strong", "Transfer question");
    addText(documentObject, target, "p", reference.transfer);
    addText(documentObject, target, "p", "Status: exposed reference · not Lean-checked · not independently reviewed · preference unrated · reader understanding unmeasured · not a held-out example.", "case-style-status");
    if (reference.id === "TS14") {
      const workbench = documentObject.createElement("a");
      workbench.className = "link";
      workbench.href = "gcd-certificate.html";
      workbench.textContent = "Open the exact GCD and Bézout certificate workbench";
      target.appendChild(workbench);
      addText(documentObject, target, "p", "The workbench is a new local arithmetic tool; its certificate does not inherit Lean status or evaluation status from this reference.", "case-style-boundary");
    }
    const details = documentObject.createElement("details");
    addText(documentObject, details, "summary", "Reference file and content digests");
    addText(documentObject, details, "p", "Release view file SHA-256: " + reference.source_sha256);
    addText(documentObject, details, "p", "Original record identity SHA-256: " + reference.original_record_sha256);
    addText(documentObject, details, "p", "Example SHA-256: " + reference.example_sha256);
    addText(documentObject, details, "p", "Version SHA-256: " + reference.version.version_sha256);
    addText(documentObject, details, "p", "Version text SHA-256: " + reference.version.text_sha256);
    target.appendChild(details);
  }

  function renderCrosswalk(documentObject, target, taxonomy) {
    target.replaceChildren();
    addText(documentObject, target, "p", "Candidate crosswalk only · this is not a production M7 record. Methods, structural features, presentation modes, and explanation moves are different axes.", "case-style-boundary");
    addText(documentObject, target, "p", "Canonical M7 v2 move-family IDs: " + taxonomy.move_families.join(", "));
    const table = documentObject.createElement("table");
    table.className = "case-style-crosswalk-table";
    const head = documentObject.createElement("tr");
    for (const label of ["Source axis", "Case tier", "Proposed label", "M7 family", "Disposition"]) addText(documentObject, head, "th", label);
    const thead = documentObject.createElement("thead"); thead.appendChild(head); table.appendChild(thead);
    const tbody = documentObject.createElement("tbody");
    for (const item of taxonomy.crosswalk) {
      const row = documentObject.createElement("tr");
      addText(documentObject, row, "td", item.axis);
      addText(documentObject, row, "td", item.case_tier || "—");
      addText(documentObject, row, "td", item.proposed_label);
      addText(documentObject, row, "td", item.m7_move_family || "Unmapped");
      addText(documentObject, row, "td", item.status + " · " + item.explanation);
      tbody.appendChild(row);
    }
    table.appendChild(tbody); target.appendChild(table);
    addText(documentObject, target, "p", "Schema SHA-256: " + taxonomy.schema_sha256 + " · crosswalk state: " + taxonomy.crosswalk_status, "case-style-status");
  }

  function ensureInspectorMarkup(container, documentObject) {
    const existing = container.querySelector("#case-style-inspector");
    if (existing) return existing;
    const panel = documentObject.createElement("section");
    panel.id = "case-style-inspector";
    panel.className = "case-style-inspector";
    panel.setAttribute("aria-labelledby", "case-style-title");
    addText(documentObject, panel, "span", "Case-bound reading choices · unscored", "eyebrow");
    const title = addText(documentObject, panel, "h4", "Choose a purpose and compare saved explanations");
    title.id = "case-style-title";
    addText(documentObject, panel, "p", "The purpose selector recommends two existing tiers. You can change either tier; the saved prose stays byte-for-byte unchanged.");

    const choices = documentObject.createElement("div");
    choices.className = "case-style-controls";
    function addSelect(id, labelText) {
      const label = documentObject.createElement("label");
      label.htmlFor = id;
      label.appendChild(documentObject.createTextNode(labelText));
      const select = documentObject.createElement("select");
      select.id = id;
      label.appendChild(select);
      choices.appendChild(label);
      return select;
    }
    addSelect("case-style-purpose", "Reading purpose");
    addSelect("case-style-primary", "Read this saved tier");
    addSelect("case-style-compare", "Compare with this saved tier");
    panel.appendChild(choices);

    const comparison = documentObject.createElement("div");
    comparison.className = "case-style-comparison";
    const primary = documentObject.createElement("article"); primary.id = "case-style-primary-content"; primary.className = "case-style-card";
    const compare = documentObject.createElement("article"); compare.id = "case-style-compare-content"; compare.className = "case-style-card";
    comparison.append(primary, compare); panel.appendChild(comparison);

    const referenceSection = documentObject.createElement("section");
    referenceSection.className = "case-style-reference";
    addText(documentObject, referenceSection, "h4", "Separate style references · not this case's proof");
    addText(documentObject, referenceSection, "p", "Browse exposed examples by claim, structure, prerequisites, and purpose. A reference never inherits the selected case's proof check.");
    const referenceChoices = documentObject.createElement("div");
    referenceChoices.className = "case-style-controls";
    for (const [id, labelText] of [["case-style-reference-example", "Reference example"], ["case-style-reference-version", "Reference version"]]) {
      const label = documentObject.createElement("label"); label.htmlFor = id; label.appendChild(documentObject.createTextNode(labelText));
      const select = documentObject.createElement("select"); select.id = id; label.appendChild(select); referenceChoices.appendChild(label);
    }
    referenceSection.appendChild(referenceChoices);
    const referenceContent = documentObject.createElement("article"); referenceContent.id = "case-style-reference-content"; referenceContent.className = "case-style-card case-style-reference-card";
    referenceSection.appendChild(referenceContent); panel.appendChild(referenceSection);

    const crosswalk = documentObject.createElement("details"); crosswalk.className = "case-style-crosswalk";
    addText(documentObject, crosswalk, "summary", "Candidate label crosswalk to M7 taxonomy v2");
    const crosswalkContent = documentObject.createElement("div"); crosswalkContent.id = "case-style-crosswalk-content";
    crosswalk.appendChild(crosswalkContent); panel.appendChild(crosswalk);

    const boundaries = documentObject.createElement("details");
    addText(documentObject, boundaries, "summary", "What this view does and does not establish");
    addText(documentObject, boundaries, "p", "Prose: exact saved candidate text and exposed reference text. Preference: still UNRATED_CANDIDATE; choosing a purpose is not a rating. Proof validity: inherited only from the exact selected M4 receipt shown in the case binding. Learning: NOT_MEASURED. The view creates no production M7 record, gate change, or training input.");
    panel.appendChild(boundaries);

    const actions = documentObject.createElement("div"); actions.className = "case-style-actions";
    const reopen = documentObject.createElement("button"); reopen.type = "button"; reopen.id = "case-style-reopen-view"; reopen.className = "link"; reopen.textContent = "Reopen serialized view";
    actions.appendChild(reopen);
    const integrity = documentObject.createElement("p"); integrity.id = "case-style-integrity"; integrity.className = "case-style-status";
    panel.append(actions, integrity);
    const state = documentObject.createElement("p"); state.id = "case-style-state"; state.className = "case-style-status"; state.setAttribute("role", "status"); state.setAttribute("aria-live", "polite");
    panel.appendChild(state);
    container.appendChild(panel);
    return panel;
  }

  async function loadPinnedArtifacts(fetcher, baseUrl) {
    async function load(path, expectedSha) {
      const url = new URL("../../" + path, baseUrl).href;
      const response = await fetcher(url, { cache: "no-store", credentials: "same-origin" });
      if (!response.ok) throw new Error("Could not reopen pinned reference " + path + ".");
      const bytes = new Uint8Array(await response.arrayBuffer());
      if (await sha256Bytes(bytes) !== expectedSha) throw new Error("Pinned reference digest mismatch for " + path + ".");
      return JSON.parse(new TextDecoder().decode(bytes));
    }
    const [playbook, taxonomySchema] = await Promise.all([
      load(REFERENCE_PATH, REFERENCE_SHA256),
      load(TAXONOMY_PATH, TAXONOMY_SHA256)
    ]);
    validatePlaybook(playbook);
    moveFamiliesFromSchema(taxonomySchema);
    return { playbook, taxonomySchema };
  }

  function createController(container) {
    const documentObject = container.ownerDocument;
    const panel = ensureInspectorMarkup(container, documentObject);
    const controls = {
      purpose: panel.querySelector("#case-style-purpose"),
      primary: panel.querySelector("#case-style-primary"),
      compare: panel.querySelector("#case-style-compare"),
      example: panel.querySelector("#case-style-reference-example"),
      version: panel.querySelector("#case-style-reference-version"),
      primaryContent: panel.querySelector("#case-style-primary-content"),
      compareContent: panel.querySelector("#case-style-compare-content"),
      referenceContent: panel.querySelector("#case-style-reference-content"),
      crosswalkContent: panel.querySelector("#case-style-crosswalk-content"),
      state: panel.querySelector("#case-style-state"),
      integrity: panel.querySelector("#case-style-integrity"),
      reopen: panel.querySelector("#case-style-reopen-view")
    };
    const controller = { packet: null, artifacts: null, view: null, generation: 0, initialized: false };
    const setStatus = value => { controls.state.textContent = value; };

    function fillSelect(select, items, valueOf, labelOf) {
      select.replaceChildren();
      for (const item of items) {
        const option = documentObject.createElement("option");
        option.value = valueOf(item); option.textContent = labelOf(item); select.appendChild(option);
      }
    }

    function render(view) {
      renderTierCard(documentObject, controls.primaryContent, "Read for the selected purpose", view.saved_case_tiers[0]);
      renderTierCard(documentObject, controls.compareContent, "Compare with", view.saved_case_tiers[1]);
      renderReference(documentObject, controls.referenceContent, {
        ...view.reference_binding.example,
        source_sha256: view.reference_binding.source_sha256,
        original_record_sha256: view.reference_binding.original_record_sha256
      });
      renderCrosswalk(documentObject, controls.crosswalkContent, view.m7_taxonomy);
      controls.integrity.textContent = "Case " + view.case_binding.case_id + " · run " + view.case_binding.selected_run_id
        + " · packet SHA-256 " + view.case_binding.packet_sha256 + " · serialized view SHA-256 " + view.view_sha256;
      controller.view = view;
    }

    async function update() {
      const generation = ++controller.generation;
      if (!controller.packet || !controller.artifacts) return;
      try {
        const view = await buildView(controller.packet, controller.artifacts.playbook, controller.artifacts.taxonomySchema, {
          purpose: controls.purpose.value,
          primaryTier: controls.primary.value,
          compareTier: controls.compare.value,
          exampleId: controls.example.value,
          versionIndex: Number(controls.version.value)
        });
        const reopened = await validateView(JSON.parse(JSON.stringify(view)), controller.packet,
          controller.artifacts.playbook, controller.artifacts.taxonomySchema);
        if (generation !== controller.generation || panel.dataset.packetSha256 !== controller.packet.packet_sha256) return;
        render(reopened);
        setStatus("Saved tiers and the separate reference were hash-checked; the serialized view reopened for this exact case and run. No rating or review was recorded.");
      } catch (error) {
        if (generation !== controller.generation) return;
        controller.view = null;
        controls.integrity.textContent = "";
        setStatus("Style view refused: " + String(error?.message || error));
      }
    }

    function updateVersionOptions() {
      const example = controller.artifacts?.playbook.examples.find(item => item.id === controls.example.value);
      if (!example) return;
      fillSelect(controls.version, example.versions.map((item, index) => ({ item, index })), value => String(value.index), value => (value.index + 1) + ". " + value.item.name);
    }

    async function setPacket(packet) {
      controller.generation += 1;
      controller.packet = packet;
      controller.view = null;
      panel.dataset.packetSha256 = packet?.packet_sha256 || "";
      panel.dataset.caseId = packet?.case_id || "";
      panel.hidden = false;
      controls.primaryContent.replaceChildren(); controls.compareContent.replaceChildren();
      controls.referenceContent.replaceChildren(); controls.crosswalkContent.replaceChildren(); controls.integrity.textContent = "";
      setStatus("Reopening the pinned style reference and M7 taxonomy schema…");
      try {
        assertPacket(packet);
        if (!controller.artifacts) controller.artifacts = await loadPinnedArtifacts(window.fetch.bind(window), window.location.href);
        if (panel.dataset.packetSha256 !== packet.packet_sha256) return;
        fillSelect(controls.purpose, Object.entries(PURPOSES), value => value[0], value => value[1].label);
        fillSelect(controls.primary, TIERS, value => value, value => value.replace(/_/g, " "));
        fillSelect(controls.compare, TIERS, value => value, value => value.replace(/_/g, " "));
        fillSelect(controls.example, controller.artifacts.playbook.examples, value => value.id, value => value.id + " · " + value.title);
        controls.purpose.value = "overview";
        controls.primary.value = PURPOSES.overview.primary;
        controls.compare.value = PURPOSES.overview.compare;
        controls.example.value = controller.artifacts.playbook.examples.some(item => item.id === "TS09") ? "TS09" : controller.artifacts.playbook.examples[0].id;
        updateVersionOptions();
        controls.version.value = "0";
        await update();
      } catch (error) {
        setStatus("Style view unavailable: " + String(error?.message || error) + ". The original saved explanation tabs remain available above.");
      }
    }

    if (!controller.initialized) {
      controls.purpose.addEventListener("change", () => {
        const purpose = PURPOSES[controls.purpose.value];
        if (purpose) { controls.primary.value = purpose.primary; controls.compare.value = purpose.compare; }
        void update();
      });
      controls.primary.addEventListener("change", () => void update());
      controls.compare.addEventListener("change", () => void update());
      controls.example.addEventListener("change", () => { updateVersionOptions(); void update(); });
      controls.version.addEventListener("change", () => void update());
      controls.reopen.addEventListener("click", async () => {
        if (!controller.view || !controller.packet || !controller.artifacts) return;
        try {
          const reopened = await validateView(JSON.parse(JSON.stringify(controller.view)), controller.packet,
            controller.artifacts.playbook, controller.artifacts.taxonomySchema);
          render(reopened);
          setStatus("Reopened the serialized view against the currently selected case, proof, five tiers, playbook, and M7 schema. No rating or gate effect.");
        } catch (error) { setStatus("Reopen refused: " + String(error?.message || error)); }
      });
      controller.initialized = true;
    }
    controller.setPacket = setPacket;
    return controller;
  }

  async function mount(container, packet) {
    if (!container) return;
    let controller = controllers.get(container);
    if (!controller) {
      controller = createController(container);
      controllers.set(container, controller);
    }
    return controller.setPacket(packet);
  }

  return {
    REFERENCE_PATH, REFERENCE_SHA256, REFERENCE_CANONICAL_SHA256, REFERENCE_ORIGINAL_SHA256, REFERENCE_SEMANTIC_SHA256, TAXONOMY_PATH, TAXONOMY_SHA256, TAXONOMY_CANONICAL_SHA256,
    stableJson, sha256Text, validatePlaybook, moveFamiliesFromSchema, crosswalkEntries,
    buildView, validateView, mount
  };
});
