(function (root, factory) {
  const api = factory(
    root.MathCaseGcdCertificate || (typeof require === "function" ? require("./gcd-certificate.js") : null),
    root.MathCaseIntegerEquation || (typeof require === "function" ? require("./integer-equation.js") : null)
  );
  if (typeof module === "object" && module.exports) module.exports = api;
  else root.MathCaseTwoCongruence = api;
})(typeof globalThis !== "undefined" ? globalThis : this, function (gcd, equation) {
  "use strict";

  if (!gcd || !equation) throw new Error("The checked GCD and integer-equation modules must load before the two-congruence solver.");

  const SCHEMA_VERSION = "mathcase-two-congruence-record-v1";
  const CERTIFICATE_VERSION = "two-congruence-certificate-v1";
  const ALGORITHM_VERSION = "bezout-two-congruence-family-v1";
  const CHECKER_VERSION = "recomputed-gcd-equation-and-exact-period-v1";
  const MAX_INPUT_DIGITS = 100;
  const MAX_DERIVED_DIGITS = 302;
  const MAX_PERIOD_DIGITS = 200;
  const DIGEST = /^[0-9a-f]{64}$/;

  function deepFreeze(value) {
    if (value && typeof value === "object" && !Object.isFrozen(value)) {
      for (const child of Object.values(value)) deepFreeze(child);
      Object.freeze(value);
    }
    return value;
  }

  const REFERENCE_BINDING = deepFreeze({
    gcd_checker_version: gcd.CHECKER_VERSION,
    gcd_reference_binding: JSON.parse(JSON.stringify(gcd.REFERENCE_BINDING)),
    integer_equation_checker_version: equation.CHECKER_VERSION,
    integer_equation_reference_binding: JSON.parse(JSON.stringify(equation.REFERENCE_BINDING))
  });
  const BOUNDARY = Object.freeze({
    result_class: "EXACT_LOCAL_TWO_CONGRUENCE_CERTIFICATE",
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

  function parseSigned(value, label) {
    const text = String(value ?? "");
    if (!new RegExp("^-?[0-9]{1," + MAX_INPUT_DIGITS + "}$").test(text)) {
      throw new Error(label + " must be a signed whole integer with at most " + MAX_INPUT_DIGITS + " digits.");
    }
    return BigInt(text);
  }

  function parsePositiveModulus(value, label) {
    const text = String(value ?? "");
    if (!new RegExp("^[0-9]{1," + MAX_INPUT_DIGITS + "}$").test(text)) {
      throw new Error(label + " must be a positive whole number with at most " + MAX_INPUT_DIGITS + " digits.");
    }
    const parsed = BigInt(text);
    if (parsed <= 0n) throw new Error(label + " must be greater than zero.");
    return parsed;
  }

  function canonicalSigned(value, label) {
    const parsed = parseSigned(value, label);
    if (parsed.toString() !== value) throw new Error(label + " is not a canonical signed decimal string.");
    return parsed;
  }

  function canonicalNatural(value, label, maxDigits = MAX_DERIVED_DIGITS) {
    const text = String(value ?? "");
    if (!new RegExp("^[0-9]{1," + maxDigits + "}$").test(text)) {
      throw new Error(label + " exceeds the fixed " + maxDigits + "-digit bound or is not a whole number.");
    }
    const parsed = BigInt(text);
    if (parsed.toString() !== text) throw new Error(label + " is not a canonical decimal string.");
    return parsed;
  }

  function normalizeInputs(values) {
    if (!values || typeof values !== "object") throw new Error("Enter two integer remainders and two positive moduli.");
    const residue1 = parseSigned(values.residue1, "first residue");
    const modulus1 = parsePositiveModulus(values.modulus1, "first modulus");
    const residue2 = parseSigned(values.residue2, "second residue");
    const modulus2 = parsePositiveModulus(values.modulus2, "second modulus");
    return {
      residue1: residue1.toString(),
      modulus1: modulus1.toString(),
      residue2: residue2.toString(),
      modulus2: modulus2.toString()
    };
  }

  function positiveRemainder(value, divisor) {
    const remainder = value % divisor;
    return remainder < 0n ? remainder + divisor : remainder;
  }

  function ensureDerived(value, label) {
    if (value.toString().replace(/^-/, "").length > MAX_DERIVED_DIGITS) {
      throw new Error("Derived " + label + " exceeds the fixed " + MAX_DERIVED_DIGITS + "-digit bound.");
    }
    return value;
  }

  function normalizedResidue(residue, modulus) {
    return positiveRemainder(residue, modulus);
  }

  function computeCertificate(values) {
    const inputs = normalizeInputs(values);
    const r1Input = BigInt(inputs.residue1), m1 = BigInt(inputs.modulus1);
    const r2Input = BigInt(inputs.residue2), m2 = BigInt(inputs.modulus2);
    const r1 = normalizedResidue(r1Input, m1), r2 = normalizedResidue(r2Input, m2);
    const difference = ensureDerived(r2 - r1, "residue difference");
    const gcdRecord = gcd.generateCertificate({ a: inputs.modulus1, b: inputs.modulus2 });
    const gcdCheck = gcd.verifyCertificate({ inputs: { a: inputs.modulus1, b: inputs.modulus2 }, certificate: gcdRecord.certificate });
    if (!gcdCheck.valid) throw new Error("The reused GCD certificate did not verify.");
    const d = BigInt(gcdCheck.certificate.d);
    const equationCertificate = equation.makeEquationCertificate({
      a: inputs.modulus1,
      b: inputs.modulus2,
      c: difference.toString()
    }, gcdCheck.certificate, "0");
    const equationCheck = equation.verifyEquationCertificate(equationCertificate);
    if (!equationCheck.valid) throw new Error("The reused linear-equation certificate did not verify.");

    if (equationCertificate.outcome === "NO_INTEGER_SOLUTION") {
      const witness = equationCertificate.impossibility_witness;
      return {
        certificate_version: CERTIFICATE_VERSION,
        inputs,
        normalized_residues: { residue1: r1.toString(), residue2: r2.toString() },
        residue_difference: difference.toString(),
        gcd_certificate: gcdCheck.certificate,
        linear_equation_certificate: equationCertificate,
        outcome: "NO_COMMON_SOLUTION",
        incompatibility_witness: {
          divisor: witness.divisor,
          remainder: witness.remainder
        },
        solution_family: null
      };
    }

    const equationFamily = equationCertificate.solution_family;
    const t = BigInt(equationFamily.particular.x);
    const period = ensureDerived((m1 / d) * m2, "exact period");
    if (period.toString().length > MAX_PERIOD_DIGITS) {
      throw new Error("The exact solution period exceeds the fixed " + MAX_PERIOD_DIGITS + "-digit limit.");
    }
    const unnormalized = ensureDerived(r1 + m1 * t, "CRT representative");
    const leastNonnegative = positiveRemainder(unnormalized, period);
    if (leastNonnegative < 0n || leastNonnegative >= period) throw new Error("The computed representative is outside its exact period.");
    const solution1 = positiveRemainder(leastNonnegative, m1);
    const solution2 = positiveRemainder(leastNonnegative, m2);
    if (solution1 !== r1 || solution2 !== r2) throw new Error("The constructed representative does not satisfy both congruences.");
    return {
      certificate_version: CERTIFICATE_VERSION,
      inputs,
      normalized_residues: { residue1: r1.toString(), residue2: r2.toString() },
      residue_difference: difference.toString(),
      gcd_certificate: gcdCheck.certificate,
      linear_equation_certificate: equationCertificate,
      outcome: "ALL_INTEGER_SOLUTIONS",
      incompatibility_witness: null,
      solution_family: {
        least_nonnegative: leastNonnegative.toString(),
        exact_period: period.toString()
      }
    };
  }

  function verifyCertificate(value) {
    const fail = reason => ({ valid: false, schema_valid: false, checks: {}, reason });
    try {
      const keys = ["certificate_version", "inputs", "normalized_residues", "residue_difference", "gcd_certificate", "linear_equation_certificate", "outcome", "incompatibility_witness", "solution_family"];
      if (!exactKeys(value, keys) || value.certificate_version !== CERTIFICATE_VERSION) return fail("The two-congruence certificate has an unsupported shape or version.");
      if (!exactKeys(value.inputs, ["residue1", "modulus1", "residue2", "modulus2"])) return fail("The input binding has an unsupported shape.");
      const normalized = normalizeInputs(value.inputs);
      if (stableJson(normalized) !== stableJson(value.inputs)) return fail("Inputs must use canonical decimal strings.");
      if (!exactKeys(value.normalized_residues, ["residue1", "residue2"])) return fail("The normalized residue record has an unsupported shape.");
      const r1 = canonicalNatural(value.normalized_residues.residue1, "normalized residue 1", MAX_INPUT_DIGITS);
      const r2 = canonicalNatural(value.normalized_residues.residue2, "normalized residue 2", MAX_INPUT_DIGITS);
      const m1 = BigInt(normalized.modulus1), m2 = BigInt(normalized.modulus2);
      const expectedR1 = normalizedResidue(BigInt(normalized.residue1), m1);
      const expectedR2 = normalizedResidue(BigInt(normalized.residue2), m2);
      const difference = canonicalSigned(value.residue_difference, "residue difference");
      const expectedDifference = expectedR2 - expectedR1;
      if (r1 !== expectedR1 || r2 !== expectedR2 || difference !== expectedDifference) {
        return { valid: false, schema_valid: true, checks: { normalized_residues_valid: false }, reason: "Normalized residues or their difference do not match the bound inputs." };
      }
      const gcdResult = gcd.verifyCertificate({ inputs: { a: normalized.modulus1, b: normalized.modulus2 }, certificate: value.gcd_certificate });
      if (!gcdResult.valid) return { valid: false, schema_valid: true, checks: { normalized_residues_valid: true, gcd_certificate_valid: false }, reason: "The embedded GCD certificate failed independent checking." };
      const d = BigInt(gcdResult.certificate.d);
      const expectedEquationInputs = { a: normalized.modulus1, b: normalized.modulus2, c: difference.toString() };
      const equation = value.linear_equation_certificate;
      if (!equation || stableJson(equation.inputs) !== stableJson(expectedEquationInputs)
        || stableJson(equation.gcd_certificate) !== stableJson(gcdResult.certificate)) {
        return { valid: false, schema_valid: true, checks: { normalized_residues_valid: true, gcd_certificate_valid: true, equation_binding_valid: false }, reason: "The linear equation certificate is not bound to the normalized moduli and difference." };
      }
      const equationResult = equationModuleCheck(equation);
      if (!equationResult.valid) return { valid: false, schema_valid: true, checks: { normalized_residues_valid: true, gcd_certificate_valid: true, equation_binding_valid: true, equation_certificate_valid: false }, reason: "The embedded linear-equation certificate failed independent checking." };
      const checks = {
        normalized_residues_valid: true,
        gcd_certificate_valid: true,
        equation_binding_valid: true,
        equation_certificate_valid: true,
        incompatibility_witness_valid: false,
        both_congruences_valid: false,
        least_nonnegative_representative: false,
        exact_period_valid: false,
        all_solutions_covered: false
      };
      if (equation.outcome === "NO_INTEGER_SOLUTION") {
        if (value.outcome !== "NO_COMMON_SOLUTION" || value.solution_family !== null
          || !exactKeys(value.incompatibility_witness, ["divisor", "remainder"])) {
          return { valid: false, schema_valid: true, checks, reason: "An incompatible system must contain only a checked nondivisibility witness." };
        }
        const divisor = canonicalNatural(value.incompatibility_witness.divisor, "incompatibility divisor", MAX_DERIVED_DIGITS);
        const remainder = canonicalNatural(value.incompatibility_witness.remainder, "incompatibility remainder", MAX_DERIVED_DIGITS);
        const expectedRemainder = positiveRemainder(difference, d);
        checks.incompatibility_witness_valid = divisor === d && expectedRemainder !== 0n
          && remainder === expectedRemainder && remainder > 0n && remainder < d;
        return {
          valid: Object.values(checks).filter((_, index) => index < 5).every(Boolean) && checks.incompatibility_witness_valid,
          schema_valid: true,
          outcome: value.outcome,
          inputs: normalized,
          checks,
          reason: checks.incompatibility_witness_valid
            ? "The checked gcd divides both moduli but not the residue difference, so no integer satisfies both congruences."
            : "The incompatibility witness does not match the recomputed gcd remainder."
        };
      }
      if (equation.outcome !== "ALL_INTEGER_SOLUTIONS" || value.outcome !== "ALL_INTEGER_SOLUTIONS"
        || value.incompatibility_witness !== null || !exactKeys(value.solution_family, ["least_nonnegative", "exact_period"])) {
        return { valid: false, schema_valid: true, checks, reason: "A compatible system has an unsupported result shape or outcome." };
      }
      const solution = canonicalNatural(value.solution_family.least_nonnegative, "least nonnegative solution", MAX_PERIOD_DIGITS);
      const submittedPeriod = canonicalNatural(value.solution_family.exact_period, "exact period", MAX_PERIOD_DIGITS);
      const equationX = BigInt(equation.solution_family.particular.x);
      const exactPeriod = (m1 / d) * m2;
      if (exactPeriod.toString().length > MAX_PERIOD_DIGITS) {
        return { valid: false, schema_valid: true, checks, reason: "The recomputed exact period exceeds the fixed 200-digit limit." };
      }
      const expectedSolution = positiveRemainder(r1 + m1 * equationX, exactPeriod);
      checks.incompatibility_witness_valid = true;
      checks.both_congruences_valid = positiveRemainder(solution, m1) === r1 && positiveRemainder(solution, m2) === r2;
      checks.least_nonnegative_representative = solution === expectedSolution && solution >= 0n && solution < exactPeriod;
      checks.exact_period_valid = submittedPeriod === exactPeriod && submittedPeriod > 0n;
      checks.all_solutions_covered = checks.exact_period_valid
        && exactPeriod % m1 === 0n && exactPeriod % m2 === 0n
        && (exactPeriod / m1) * (m1 / d) === exactPeriod / d;
      return {
        valid: Object.values(checks).every(Boolean),
        schema_valid: true,
        outcome: value.outcome,
        inputs: normalized,
        checks,
        reason: Object.values(checks).every(Boolean)
          ? "Both congruences hold, the representative is least nonnegative, and the exact lcm period covers every integer solution."
          : "At least one congruence, representative, or exact-period check failed."
      };
    } catch (error) {
      return fail(String(error && error.message || error));
    }
  }

  function checkFamilyMember(certificate, parameter) {
    const verified = verifyCertificate(certificate);
    if (!verified.valid) throw new Error("Cannot check a family member from an invalid two-congruence certificate.");
    if (certificate.outcome !== "ALL_INTEGER_SOLUTIONS" || !certificate.solution_family) {
      throw new Error("A solution-family member exists only when the pinned congruences are compatible.");
    }
    const k = parseSigned(parameter, "family parameter");
    const least = canonicalNatural(certificate.solution_family.least_nonnegative, "least nonnegative representative");
    const period = canonicalNatural(certificate.solution_family.exact_period, "exact solution period");
    const value = ensureDerived(least + period * k, "family member");
    const checks = [
      { modulus: BigInt(certificate.inputs.modulus1), expected: certificate.normalized_residues.residue1 },
      { modulus: BigInt(certificate.inputs.modulus2), expected: certificate.normalized_residues.residue2 }
    ].map(item => {
      const remainder = positiveRemainder(value, item.modulus);
      const quotient = (value - remainder) / item.modulus;
      const remainderText = remainder.toString();
      return {
        modulus: item.modulus.toString(),
        quotient: quotient.toString(),
        remainder: remainderText,
        expected_remainder: item.expected,
        matches: remainderText === item.expected
      };
    });
    return {
      valid: checks.every(item => item.matches),
      parameter: k.toString(),
      value: value.toString(),
      checks,
      boundary: { result_class: "LOCAL_FAMILY_MEMBER_SPOT_CHECK", proof_execution: "NOT_RUN", gate_effect: "NONE" }
    };
  }

  function equationModuleCheck(value) {
    return equation.verifyEquationCertificate(value);
  }

  function metricsFor(certificate) {
    const inputs = certificate.inputs;
    const output = {
      input_digits: {
        residue1: inputs.residue1.replace(/^-/, "").length,
        modulus1: inputs.modulus1.length,
        residue2: inputs.residue2.replace(/^-/, "").length,
        modulus2: inputs.modulus2.length
      },
      outcome: certificate.outcome,
      normalized_residue_digits: {
        residue1: certificate.normalized_residues.residue1.length,
        residue2: certificate.normalized_residues.residue2.length
      },
      measure_scope: "local exact arithmetic, not M6"
    };
    if (certificate.solution_family) {
      output.derived_digits = {
        least_nonnegative: certificate.solution_family.least_nonnegative.length,
        exact_period: certificate.solution_family.exact_period.length
      };
    } else {
      output.derived_digits = {
        gcd: certificate.incompatibility_witness.divisor.length,
        incompatibility_remainder: certificate.incompatibility_witness.remainder.length
      };
    }
    return output;
  }

  function buildRecord(values) {
    const certificate = computeCertificate(values);
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
    const certificateResult = verifyCertificate(value.certificate);
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
    MAX_PERIOD_DIGITS,
    REFERENCE_BINDING,
    BOUNDARY,
    stableJson,
    normalizeInputs,
    computeCertificate,
    verifyCertificate,
    checkFamilyMember,
    metricsFor,
    buildRecord,
    sealRecord,
    verifyRecord
  };
});
