(function (root, factory) {
  const api = factory(root.MathCaseGcdCertificate || (typeof require === "function" ? require("./gcd-certificate.js") : null));
  if (typeof module === "object" && module.exports) module.exports = api;
  else root.MathCaseIntegerEquation = api;
})(typeof globalThis !== "undefined" ? globalThis : this, function (gcd) {
  "use strict";

  if (!gcd) throw new Error("The exact GCD certificate module must load before the integer-equation module.");

  const SCHEMA_VERSION = "mathcase-integer-equation-record-v1";
  const CERTIFICATE_VERSION = "integer-linear-equation-certificate-v1";
  const ALGORITHM_VERSION = "bezout-linear-equation-family-v1";
  const CHECKER_VERSION = "recomputed-divisibility-and-primitive-family-v1";
  const MAX_INPUT_DIGITS = gcd.MAX_DIGITS;
  const MAX_DERIVED_DIGITS = (2 * MAX_INPUT_DIGITS) + 2;
  const DIGEST = /^[0-9a-f]{64}$/;

  function deepFreeze(value) {
    if (value && typeof value === "object" && !Object.isFrozen(value)) {
      for (const child of Object.values(value)) deepFreeze(child);
      Object.freeze(value);
    }
    return value;
  }

  const REFERENCE_BINDING = deepFreeze(JSON.parse(JSON.stringify(gcd.REFERENCE_BINDING)));
  const BOUNDARY = Object.freeze({
    result_class: "EXACT_LOCAL_INTEGER_EQUATION_CERTIFICATE",
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

  function exactKeys(value, keys) {
    return !!value && typeof value === "object" && !Array.isArray(value)
      && stableJson(Object.keys(value).sort()) === stableJson([...keys].sort());
  }

  function parseSignedInput(value, label) {
    const text = String(value ?? "");
    if (!new RegExp("^-?[0-9]{1," + MAX_INPUT_DIGITS + "}$").test(text)) {
      throw new Error(label + " must be a signed whole integer with at most " + MAX_INPUT_DIGITS + " digits.");
    }
    return BigInt(text);
  }

  function parseDerivedSigned(value, label) {
    const text = String(value ?? "");
    if (!new RegExp("^-?[0-9]{1," + MAX_DERIVED_DIGITS + "}$").test(text)) {
      throw new Error(label + " exceeds the fixed " + MAX_DERIVED_DIGITS + "-digit derived-value bound.");
    }
    const parsed = BigInt(text);
    if (parsed.toString() !== text) throw new Error(label + " is not a canonical signed decimal string.");
    return parsed;
  }

  function parseDerivedNatural(value, label) {
    const text = String(value ?? "");
    if (!new RegExp("^[0-9]{1," + MAX_DERIVED_DIGITS + "}$").test(text)) {
      throw new Error(label + " exceeds the fixed " + MAX_DERIVED_DIGITS + "-digit derived-value bound.");
    }
    const parsed = BigInt(text);
    if (parsed.toString() !== text) throw new Error(label + " is not a canonical decimal string.");
    return parsed;
  }

  function normalizeInputs(values) {
    if (!values || typeof values !== "object") throw new Error("Enter a, b, and c first.");
    const a = gcd.parseNatural(values.a, "a");
    const b = gcd.parseNatural(values.b, "b");
    if (a === 0n && b === 0n) throw new Error("At least one input must be positive; gcd(0,0) is not defined here.");
    const c = parseSignedInput(values.c, "c");
    return { a: a.toString(), b: b.toString(), c: c.toString() };
  }

  function canonicalGcdCertificate(value, inputs) {
    if (!exactKeys(value, ["d", "x", "y"])) throw new Error("The embedded GCD certificate has an unsupported shape.");
    const d = parseDerivedNatural(value.d, "gcd d");
    const x = parseDerivedSigned(value.x, "gcd x");
    const y = parseDerivedSigned(value.y, "gcd y");
    const normalized = { d: d.toString(), x: x.toString(), y: y.toString() };
    const checked = gcd.verifyCertificate({ inputs: { a: inputs.a, b: inputs.b }, certificate: normalized });
    if (!checked.valid) throw new Error("The embedded GCD certificate does not verify for the equation inputs.");
    return checked.certificate;
  }

  function positiveRemainder(value, divisor) {
    const remainder = value % divisor;
    return remainder < 0n ? remainder + divisor : remainder;
  }

  function makeEquationCertificate(values, gcdCertificate, parameter = "0") {
    const inputs = normalizeInputs(values);
    const parsedGcd = canonicalGcdCertificate(gcdCertificate, inputs);
    const d = BigInt(parsedGcd.d);
    const a = BigInt(inputs.a), b = BigInt(inputs.b), c = BigInt(inputs.c);
    const remainder = positiveRemainder(c, d);
    if (remainder !== 0n) {
      return {
        certificate_version: CERTIFICATE_VERSION,
        inputs,
        gcd_certificate: parsedGcd,
        outcome: "NO_INTEGER_SOLUTION",
        impossibility_witness: { divisor: d.toString(), remainder: remainder.toString() },
        solution_family: null
      };
    }

    const tText = String(parameter ?? "");
    const t = parseSignedInput(tText, "t");
    const scale = c / d;
    const x0 = BigInt(parsedGcd.x) * scale;
    const y0 = BigInt(parsedGcd.y) * scale;
    const stepX = b / d;
    const stepY = -(a / d);
    const x = x0 + stepX * t;
    const y = y0 + stepY * t;
    for (const [label, value] of Object.entries({ x0, y0, stepX, stepY, x, y })) {
      if (value.toString().replace(/^-/, "").length > MAX_DERIVED_DIGITS) {
        throw new Error("Derived " + label + " exceeds the fixed " + MAX_DERIVED_DIGITS + "-digit bound.");
      }
    }
    return {
      certificate_version: CERTIFICATE_VERSION,
      inputs,
      gcd_certificate: parsedGcd,
      outcome: "ALL_INTEGER_SOLUTIONS",
      impossibility_witness: null,
      solution_family: {
        particular: { x: x0.toString(), y: y0.toString() },
        primitive_steps: { x: stepX.toString(), y: stepY.toString() },
        parameter: t.toString(),
        chosen: { x: x.toString(), y: y.toString() }
      }
    };
  }

  function verifyEquationCertificate(value) {
    const fail = reason => ({ valid: false, schema_valid: false, checks: {}, reason });
    try {
      if (!exactKeys(value, ["certificate_version", "inputs", "gcd_certificate", "outcome", "impossibility_witness", "solution_family"])) {
        return fail("The equation certificate has an unsupported shape.");
      }
      if (value.certificate_version !== CERTIFICATE_VERSION) return fail("The equation certificate version is unsupported.");
      if (!exactKeys(value.inputs, ["a", "b", "c"])) return fail("The equation input binding has an unsupported shape.");
      const inputs = normalizeInputs(value.inputs);
      if (stableJson(inputs) !== stableJson(value.inputs)) return fail("Equation inputs must use canonical decimal strings.");
      const parsedGcd = canonicalGcdCertificate(value.gcd_certificate, inputs);
      if (stableJson(parsedGcd) !== stableJson(value.gcd_certificate)) return fail("The embedded GCD certificate is not canonical.");
      const a = BigInt(inputs.a), b = BigInt(inputs.b), c = BigInt(inputs.c), d = BigInt(parsedGcd.d);
      const remainder = positiveRemainder(c, d);
      const checks = {
        gcd_certificate_valid: true,
        input_binding_valid: true,
        divisibility_condition_recomputed: true,
        impossibility_witness_valid: false,
        family_particular_valid: false,
        family_steps_primitive: false,
        chosen_pair_satisfies_equation: false,
        chosen_pair_matches_submitted_family_parameter: false,
        chosen_pair_matches_canonical_family_parameter: false,
        all_solutions_covered: false
      };

      if (value.outcome === "NO_INTEGER_SOLUTION") {
        if (value.solution_family !== null || !exactKeys(value.impossibility_witness, ["divisor", "remainder"])) {
          return { valid: false, schema_valid: true, checks, reason: "An impossibility certificate must contain only a divisor and nonzero remainder witness." };
        }
        const witnessDivisor = parseDerivedNatural(value.impossibility_witness.divisor, "witness divisor");
        const witnessRemainder = parseDerivedNatural(value.impossibility_witness.remainder, "witness remainder");
        checks.impossibility_witness_valid = remainder !== 0n
          && witnessDivisor === d && witnessRemainder === remainder && witnessRemainder > 0n && witnessRemainder < d;
        return {
          valid: checks.gcd_certificate_valid && checks.input_binding_valid && checks.impossibility_witness_valid,
          schema_valid: true,
          outcome: value.outcome,
          inputs,
          checks,
          reason: checks.impossibility_witness_valid
            ? "The verified gcd divides both coefficients but leaves a nonzero remainder in c, so no integer solution exists."
            : "The submitted impossibility witness does not match the recomputed gcd remainder."
        };
      }

      if (value.outcome !== "ALL_INTEGER_SOLUTIONS" || value.impossibility_witness !== null
        || !exactKeys(value.solution_family, ["particular", "primitive_steps", "parameter", "chosen"])) {
        return { valid: false, schema_valid: true, checks, reason: "A solvable equation certificate has an unsupported shape or outcome." };
      }
      const family = value.solution_family;
      if (!exactKeys(family.particular, ["x", "y"]) || !exactKeys(family.primitive_steps, ["x", "y"])
        || !exactKeys(family.chosen, ["x", "y"])) {
        return { valid: false, schema_valid: true, checks, reason: "The solution family has an unsupported shape." };
      }
      const t = BigInt(family.parameter);
      if (t.toString() !== family.parameter || family.parameter.replace(/^-/, "").length > MAX_INPUT_DIGITS) {
        return { valid: false, schema_valid: true, checks, reason: "The family parameter is not a canonical signed input integer." };
      }
      const submitted = {
        x0: parseDerivedSigned(family.particular.x, "particular x"),
        y0: parseDerivedSigned(family.particular.y, "particular y"),
        stepX: parseDerivedNatural(family.primitive_steps.x, "family x step"),
        stepY: parseDerivedSigned(family.primitive_steps.y, "family y step"),
        x: parseDerivedSigned(family.chosen.x, "chosen x"),
        y: parseDerivedSigned(family.chosen.y, "chosen y")
      };
      if (remainder !== 0n) return { valid: false, schema_valid: true, checks, outcome: value.outcome, inputs, reason: "The gcd does not divide c; a solution family cannot exist." };
      const scale = c / d;
      const expected = {
        x0: BigInt(parsedGcd.x) * scale,
        y0: BigInt(parsedGcd.y) * scale,
        stepX: b / d,
        stepY: -(a / d)
      };
      expected.x = expected.x0 + expected.stepX * t;
      expected.y = expected.y0 + expected.stepY * t;
      checks.family_particular_valid = submitted.x0 === expected.x0 && submitted.y0 === expected.y0
        && a * submitted.x0 + b * submitted.y0 === c;
      checks.family_steps_primitive = submitted.stepX === expected.stepX && submitted.stepY === expected.stepY;
      checks.chosen_pair_satisfies_equation = a * submitted.x + b * submitted.y === c;
      checks.chosen_pair_matches_submitted_family_parameter = submitted.x === submitted.x0 + submitted.stepX * t
        && submitted.y === submitted.y0 + submitted.stepY * t;
      checks.chosen_pair_matches_canonical_family_parameter = submitted.x === expected.x && submitted.y === expected.y;
      checks.all_solutions_covered = checks.gcd_certificate_valid && checks.family_particular_valid && checks.family_steps_primitive;
      const allFamilyChecks = checks.gcd_certificate_valid && checks.input_binding_valid
        && checks.divisibility_condition_recomputed && checks.family_particular_valid
        && checks.family_steps_primitive && checks.chosen_pair_satisfies_equation
        && checks.chosen_pair_matches_submitted_family_parameter
        && checks.chosen_pair_matches_canonical_family_parameter && checks.all_solutions_covered;
      return {
        valid: allFamilyChecks,
        schema_valid: true,
        outcome: value.outcome,
        inputs,
        parameter: family.parameter,
        checks,
        reason: checks.all_solutions_covered && checks.chosen_pair_satisfies_equation
          && checks.chosen_pair_matches_submitted_family_parameter
          && checks.chosen_pair_matches_canonical_family_parameter
          ? "The particular solution and recomputed primitive steps describe every integer solution; the chosen t value was also checked."
          : checks.chosen_pair_satisfies_equation && checks.chosen_pair_matches_submitted_family_parameter && !checks.family_steps_primitive
            ? "The chosen pair satisfies the equation and matches the displayed family at t, but the displayed steps are not the recomputed primitive steps and do not establish every solution."
            : checks.chosen_pair_satisfies_equation && !checks.chosen_pair_matches_submitted_family_parameter
              ? "The chosen pair satisfies the equation, but it does not match the submitted family at its stated parameter."
            : !checks.family_steps_primitive
              ? "The proposed family steps are not the exact primitive steps, so all integer solutions are not covered."
              : "The particular solution, input binding, or chosen pair failed independent recomputation."
      };
    } catch (error) {
      return fail(String(error && error.message || error));
    }
  }

  function metricsFor(certificate) {
    const inputs = certificate.inputs;
    const derived = certificate.solution_family;
    if (!derived) {
      return {
        input_digits: { a: inputs.a.length, b: inputs.b.length, c: inputs.c.replace(/^-/, "").length },
        outcome: certificate.outcome,
        derived_digits: { gcd_remainder: certificate.impossibility_witness.remainder.length }
      };
    }
    return {
      input_digits: { a: inputs.a.length, b: inputs.b.length, c: inputs.c.replace(/^-/, "").length },
      outcome: certificate.outcome,
      derived_digits: {
        particular_x: derived.particular.x.replace(/^-/, "").length,
        particular_y: derived.particular.y.replace(/^-/, "").length,
        step_x: derived.primitive_steps.x.length,
        step_y: derived.primitive_steps.y.replace(/^-/, "").length,
        chosen_x: derived.chosen.x.replace(/^-/, "").length,
        chosen_y: derived.chosen.y.replace(/^-/, "").length
      }
    };
  }

  function buildRecord(values, gcdCertificate, parameter = "0") {
    const certificate = makeEquationCertificate(values, gcdCertificate, parameter);
    return {
      schema_version: SCHEMA_VERSION,
      algorithm_version: ALGORITHM_VERSION,
      checker_version: CHECKER_VERSION,
      certificate,
      reference_binding: JSON.parse(JSON.stringify(REFERENCE_BINDING)),
      local_metrics: metricsFor(certificate),
      boundary: JSON.parse(JSON.stringify(BOUNDARY))
    };
  }

  async function sealRecord(record, digest = sha256) {
    const payload = { ...record };
    delete payload.content_sha256;
    return { ...payload, content_sha256: await digest(new TextEncoder().encode(stableJson(payload))) };
  }

  async function verifyRecord(record, digest = sha256) {
    const keys = ["schema_version", "algorithm_version", "checker_version", "certificate", "reference_binding", "local_metrics", "boundary", "content_sha256"];
    const schemaValid = exactKeys(record, keys)
      && record.schema_version === SCHEMA_VERSION
      && record.algorithm_version === ALGORITHM_VERSION
      && record.checker_version === CHECKER_VERSION;
    const value = record && typeof record === "object" && !Array.isArray(record) ? record : {};
    const certificateResult = verifyEquationCertificate(value.certificate);
    const referenceBindingValid = stableJson(value.reference_binding) === stableJson(REFERENCE_BINDING);
    const boundaryValid = stableJson(value.boundary) === stableJson(BOUNDARY);
    const localMetricsValid = certificateResult.valid && stableJson(value.local_metrics) === stableJson(metricsFor(value.certificate));
    let contentDigestValid = false;
    if (DIGEST.test(value.content_sha256 || "")) {
      const payload = { ...value };
      delete payload.content_sha256;
      contentDigestValid = await digest(new TextEncoder().encode(stableJson(payload))) === value.content_sha256;
    }
    return {
      schema_valid: schemaValid,
      certificate_valid: certificateResult.valid,
      certificate: certificateResult,
      content_digest_valid: contentDigestValid,
      reference_binding_valid: referenceBindingValid,
      local_metrics_valid: localMetricsValid,
      boundary_valid: boundaryValid
    };
  }

  return {
    SCHEMA_VERSION,
    CERTIFICATE_VERSION,
    ALGORITHM_VERSION,
    CHECKER_VERSION,
    MAX_INPUT_DIGITS,
    MAX_DERIVED_DIGITS,
    REFERENCE_BINDING,
    BOUNDARY,
    stableJson,
    normalizeInputs,
    makeEquationCertificate,
    verifyEquationCertificate,
    buildRecord,
    sealRecord,
    verifyRecord
  };
});
