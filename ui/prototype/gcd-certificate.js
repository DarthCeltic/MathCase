(function (root, factory) {
  const api = factory();
  if (typeof module === "object" && module.exports) module.exports = api;
  else root.MathCaseGcdCertificate = api;
})(typeof globalThis !== "undefined" ? globalThis : this, function () {
  "use strict";

  const SCHEMA_VERSION = "mathcase-gcd-certificate-v1";
  const ALGORITHM_VERSION = "extended-euclid-v1";
  const CHECKER_VERSION = "divisibility-bezout-checker-v1";
  const MAX_DIGITS = 100;
  const MAX_ITERATIONS = 512;
  const DIGEST = /^[0-9a-f]{64}$/;
  const REFERENCE_BINDING = Object.freeze({
    source_path: "config/taste-style-reference-proposal.json",
    source_sha256: "75b1ed41c4e2dc65da7608e792cf74f61fbb8edb768d9e8925ca6846847d5314",
    example_id: "TS14",
    example_sha256: "a625997377809d6fcc47e805fa51069b97e36b880bf2b9945cf8c3707ec6d8a2",
    versions: [
      {
        name: "Euclidean steps",
        version_sha256: "3525a5118ce1cef8d0d15db81d0480c7478f37d083f37c071bdab90964112046",
        text_sha256: "16362925398eb3176e31b28de5729901b4f0685c377b9d2fed0682b442d3296a"
      },
      {
        name: "Check the certificate",
        version_sha256: "97535c2fb0682cf6b1aa869a2486426ddc0b5fe5a445a2d0ad1af4d543db4a2d",
        text_sha256: "355b2da66e54c71b1fbb348715e2105b62b0c8395626f63fab26440cd0f8062a"
      }
    ]
  });
  const BOUNDARY = Object.freeze({
    result_class: "EXACT_LOCAL_ARITHMETIC_CERTIFICATE",
    proof_execution: "NOT_RUN",
    lean_verification: "NOT_RUN",
    review_status: "DRAFT_ONLY",
    gate_effect: "NONE",
    training_use: "NOT_AUTHORIZED"
  });

  function stableJson(value) {
    if (Array.isArray(value)) return "[" + value.map(stableJson).join(",") + "]";
    if (value && typeof value === "object") {
      return "{" + Object.keys(value).sort().map(key => JSON.stringify(key) + ":" + stableJson(value[key])).join(",") + "}";
    }
    return JSON.stringify(value);
  }

  async function sha256(bytes) {
    if (!globalThis.crypto?.subtle) throw new Error("Web Crypto SHA-256 is unavailable in this browser.");
    const digest = await globalThis.crypto.subtle.digest("SHA-256", bytes);
    return Array.from(new Uint8Array(digest), value => value.toString(16).padStart(2, "0")).join("");
  }

  function parseNatural(value, label) {
    const text = String(value ?? "");
    if (!new RegExp("^[0-9]{1," + MAX_DIGITS + "}$").test(text)) {
      throw new Error(label + " must be a whole nonnegative integer written with 1–" + MAX_DIGITS + " decimal digits.");
    }
    return BigInt(text);
  }

  function parseSigned(value, label) {
    const text = String(value ?? "");
    if (!new RegExp("^-?[0-9]{1," + MAX_DIGITS + "}$").test(text)) {
      throw new Error(label + " must be a signed whole integer with at most " + MAX_DIGITS + " digits.");
    }
    return BigInt(text);
  }

  function canonicalNatural(value, label) {
    const text = String(value ?? "");
    const parsed = parseNatural(text, label);
    if (parsed.toString() !== text) throw new Error(label + " is not a canonical decimal string.");
    return parsed;
  }

  function canonicalSigned(value, label) {
    const text = String(value ?? "");
    const parsed = parseSigned(text, label);
    if (parsed.toString() !== text) throw new Error(label + " is not a canonical signed decimal string.");
    return parsed;
  }

  function normalizeInputs(values) {
    if (!values || typeof values !== "object") throw new Error("Enter two nonnegative integers first.");
    const a = parseNatural(values.a, "a");
    const b = parseNatural(values.b, "b");
    if (a === 0n && b === 0n) throw new Error("At least one input must be positive; gcd(0,0) is not defined here.");
    return { a: a.toString(), b: b.toString() };
  }

  function generateCertificate(values) {
    const inputs = normalizeInputs(values);
    const a = BigInt(inputs.a);
    const b = BigInt(inputs.b);
    let oldR = a, r = b;
    let oldS = 1n, s = 0n;
    let oldT = 0n, t = 1n;
    const divisionTrace = [];
    while (r !== 0n) {
      if (divisionTrace.length >= MAX_ITERATIONS) throw new Error("Euclidean division exceeded the fixed " + MAX_ITERATIONS + " step limit.");
      const quotient = oldR / r;
      const remainder = oldR % r;
      divisionTrace.push({ a: oldR.toString(), b: r.toString(), quotient: quotient.toString(), remainder: remainder.toString() });
      [oldR, r] = [r, remainder];
      [oldS, s] = [s, oldS - quotient * s];
      [oldT, t] = [t, oldT - quotient * t];
    }
    return {
      inputs,
      certificate: { d: oldR.toString(), x: oldS.toString(), y: oldT.toString() },
      division_trace: divisionTrace
    };
  }

  function verifyCertificate(values) {
    const inputs = normalizeInputs({ a: values?.inputs?.a ?? values?.a, b: values?.inputs?.b ?? values?.b });
    const certificate = values?.certificate || values;
    const a = BigInt(inputs.a), b = BigInt(inputs.b);
    const d = parseNatural(certificate?.d, "d");
    const x = parseSigned(certificate?.x, "x");
    const y = parseSigned(certificate?.y, "y");
    const checks = {
      positive_gcd: d > 0n,
      divides_a: d > 0n && a % d === 0n,
      divides_b: d > 0n && b % d === 0n,
      bezout_identity: a * x + b * y === d
    };
    return { inputs, certificate: { d: d.toString(), x: x.toString(), y: y.toString() }, checks, valid: Object.values(checks).every(Boolean) };
  }

  function verifyDivisionTrace(inputsValue, certificateValue, trace) {
    if (trace === undefined || trace === null) return { provided: false, valid: null, steps: 0, reason: "No Euclidean division trace was supplied; the certificate is checked separately." };
    try {
      const inputs = normalizeInputs(inputsValue);
      const a = BigInt(inputs.a), b = BigInt(inputs.b);
      const d = canonicalNatural(certificateValue?.d, "d");
      if (!Array.isArray(trace) || trace.length > MAX_ITERATIONS) throw new Error("Trace is not an array within the fixed step limit.");
      let currentA = a, currentB = b;
      for (const row of trace) {
        if (!row || typeof row !== "object" || Array.isArray(row)
          || Object.keys(row).length !== 4 || !["a", "b", "quotient", "remainder"].every(key => Object.hasOwn(row, key))) {
          throw new Error("A trace row has an unsupported shape.");
        }
        const rowA = canonicalNatural(row.a, "trace a");
        const rowB = canonicalNatural(row.b, "trace b");
        const quotient = canonicalNatural(row.quotient, "trace quotient");
        const remainder = canonicalNatural(row.remainder, "trace remainder");
        if (currentB === 0n || rowA !== currentA || rowB !== currentB
          || rowA !== quotient * rowB + remainder || remainder >= rowB) {
          throw new Error("A division row does not match Euclidean division with a smaller remainder.");
        }
        [currentA, currentB] = [currentB, remainder];
      }
      if (currentB !== 0n || currentA !== d) throw new Error("The trace does not terminate at the certificate's d.");
      return { provided: true, valid: true, steps: trace.length, reason: "Every quotient and remainder is exact, remainders decrease, and the trace terminates at d." };
    } catch (error) {
      return { provided: true, valid: false, steps: Array.isArray(trace) ? trace.length : 0, reason: String(error && error.message || error) };
    }
  }

  function buildRecord(values, divisionTrace = null) {
    const checked = verifyCertificate(values);
    const trace = divisionTrace === undefined ? null : divisionTrace;
    return {
      schema_version: SCHEMA_VERSION,
      inputs: checked.inputs,
      certificate: checked.certificate,
      division_trace: trace,
      algorithm_version: ALGORITHM_VERSION,
      checker_version: CHECKER_VERSION,
      reference_binding: JSON.parse(JSON.stringify(REFERENCE_BINDING)),
      local_metrics: {
        input_digits: { a: checked.inputs.a.length, b: checked.inputs.b.length },
        euclidean_division_steps: Array.isArray(trace) ? trace.length : null
      },
      boundary: JSON.parse(JSON.stringify(BOUNDARY))
    };
  }

  async function sealRecord(record, digest = sha256) {
    const payload = { ...record };
    delete payload.content_sha256;
    const bytes = new TextEncoder().encode(stableJson(payload));
    return { ...payload, content_sha256: await digest(bytes) };
  }

  async function verifyRecord(record, digest = sha256) {
    const expectedKeys = ["schema_version", "inputs", "certificate", "division_trace", "algorithm_version", "checker_version", "reference_binding", "local_metrics", "boundary", "content_sha256"].sort();
    const actualKeys = record && typeof record === "object" && !Array.isArray(record) ? Object.keys(record).sort() : [];
    const value = record && typeof record === "object" && !Array.isArray(record) ? record : {};
    const schemaValid = stableJson(expectedKeys) === stableJson(actualKeys)
      && value.schema_version === SCHEMA_VERSION
      && value.algorithm_version === ALGORITHM_VERSION
      && value.checker_version === CHECKER_VERSION;
    let certificateResult = null;
    let traceResult = { provided: false, valid: null, steps: 0, reason: "No trace was checked." };
    let localMetricsValid = false;
    try {
      certificateResult = verifyCertificate({ inputs: value.inputs, certificate: value.certificate });
      traceResult = verifyDivisionTrace(value.inputs, value.certificate, value.division_trace);
      localMetricsValid = stableJson(value.local_metrics) === stableJson({
        input_digits: { a: certificateResult.inputs.a.length, b: certificateResult.inputs.b.length },
        euclidean_division_steps: Array.isArray(value.division_trace) ? value.division_trace.length : null
      });
    } catch (error) {
      certificateResult = { valid: false, checks: { well_formed: false }, reason: String(error && error.message || error) };
    }
    const referenceBindingValid = stableJson(value.reference_binding) === stableJson(REFERENCE_BINDING);
    const boundaryValid = stableJson(value.boundary) === stableJson(BOUNDARY);
    let contentDigestValid = false;
    if (DIGEST.test(value.content_sha256 || "")) {
      const payload = { ...value };
      delete payload.content_sha256;
      contentDigestValid = await digest(new TextEncoder().encode(stableJson(payload))) === value.content_sha256;
    }
    return {
      schema_valid: schemaValid,
      certificate_valid: certificateResult?.valid === true,
      certificate_checks: certificateResult?.checks || {},
      certificate_reason: certificateResult?.reason || null,
      trace: traceResult,
      content_digest_valid: contentDigestValid,
      reference_binding_valid: referenceBindingValid,
      local_metrics_valid: localMetricsValid,
      boundary_valid: boundaryValid
    };
  }

  return {
    SCHEMA_VERSION,
    ALGORITHM_VERSION,
    CHECKER_VERSION,
    MAX_DIGITS,
    MAX_ITERATIONS,
    REFERENCE_BINDING,
    BOUNDARY,
    stableJson,
    parseNatural,
    parseSigned,
    generateCertificate,
    verifyCertificate,
    verifyDivisionTrace,
    buildRecord,
    sealRecord,
    verifyRecord
  };
});
