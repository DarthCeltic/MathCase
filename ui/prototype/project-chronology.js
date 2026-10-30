(function (root) {
  "use strict";

  const DAY_MS = 24 * 60 * 60 * 1000;
  const HOUR_MS = 60 * 60 * 1000;
  const SCHEMA_VERSION = "mathcase-project-chronology-v2";

  function parseProjectChronology(value) {
    if (!value || typeof value !== "object" || Array.isArray(value) || value.schema_version !== SCHEMA_VERSION) {
      throw new Error("Project chronology metadata has an unsupported schema.");
    }
    const fields = ["schema_version", "project_start_anchor_utc", "project_timezone", "anchor_epoch_seconds", "anchor_definition"];
    if (Object.keys(value).length !== fields.length || fields.some((field) => !Object.hasOwn(value, field))) {
      throw new Error("Project chronology metadata has unsupported fields.");
    }
    const anchor = value.project_start_anchor_utc;
    if (typeof anchor !== "string" || !/^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}\.\d{3}Z$/.test(anchor)) {
      throw new Error("Project start anchor must be an ISO UTC timestamp with milliseconds.");
    }
    const anchorMs = Date.parse(anchor);
    if (!Number.isFinite(anchorMs) || new Date(anchorMs).toISOString() !== anchor) {
      throw new Error("Project start anchor is not a valid UTC date.");
    }
    if (typeof value.project_timezone !== "string" || !value.project_timezone.trim()) {
      throw new Error("Project chronology metadata must name its display timezone.");
    }
    try {
      new Intl.DateTimeFormat("en-US", { timeZone: value.project_timezone });
    } catch {
      throw new Error("Project chronology metadata must name a valid display timezone.");
    }
    if (!Number.isSafeInteger(value.anchor_epoch_seconds) || value.anchor_epoch_seconds !== Math.floor(anchorMs / 1000)) {
      throw new Error("Project chronology metadata has an inconsistent epoch timestamp.");
    }
    if (typeof value.anchor_definition !== "string" || !value.anchor_definition.trim()) {
      throw new Error("Project chronology metadata must define its start timestamp.");
    }
    return { anchor, anchorMs, projectTimezone: value.project_timezone, anchorEpochSeconds: value.anchor_epoch_seconds };
  }

  function calculateProjectAge(anchorMs, nowMs) {
    if (!Number.isFinite(anchorMs) || !Number.isFinite(nowMs)) {
      throw new Error("Project chronology requires finite timestamps.");
    }
    const elapsedMs = nowMs - anchorMs;
    if (elapsedMs < 0) {
      return { status: "not_started", remainingMs: -elapsedMs };
    }
    const elapsedDays = Math.floor(elapsedMs / DAY_MS);
    const elapsedHours = Math.floor((elapsedMs % DAY_MS) / HOUR_MS);
    return {
      status: "started",
      projectDay: elapsedDays + 1,
      elapsedDays,
      elapsedHours,
      elapsedMs,
    };
  }

  function formatProjectAge(age) {
    if (!age || age.status !== "started") return "Project start is in the future.";
    const dayLabel = age.elapsedDays === 1 ? "day" : "days";
    const hourLabel = age.elapsedHours === 1 ? "hour" : "hours";
    return `Day ${age.projectDay} · ${age.elapsedDays} ${dayLabel}, ${age.elapsedHours} ${hourLabel} elapsed`;
  }

  function formatProjectStart(anchorMs, timeZone) {
    return new Intl.DateTimeFormat("en-US", {
      timeZone,
      year: "numeric",
      month: "long",
      day: "numeric",
      hour: "numeric",
      minute: "2-digit",
      second: "2-digit",
      timeZoneName: "short",
    }).format(new Date(anchorMs));
  }

  async function readChronology() {
    const response = await fetch("/config/project-chronology.json", { cache: "no-store", credentials: "same-origin" });
    if (!response.ok) throw new Error(`Project start record could not be reopened (HTTP ${response.status}).`);
    return parseProjectChronology(await response.json());
  }

  function mountProjectChronology(documentObject, fetchChronology = readChronology, now = () => Date.now()) {
    const value = documentObject.getElementById("project-age-value");
    const start = documentObject.getElementById("project-start-local");
    const source = documentObject.getElementById("project-start-provenance");
    const card = documentObject.getElementById("project-chronology-card");
    if (!value || !start || !source || !card) return () => {};

    let opened;
    let pending;
    async function refresh() {
      try {
        if (!opened) pending ||= fetchChronology();
        opened = opened || await pending;
        pending = undefined;
        const age = calculateProjectAge(opened.anchorMs, now());
        value.textContent = formatProjectAge(age);
        start.textContent = `Project start · ${formatProjectStart(opened.anchorMs, opened.projectTimezone)} (${opened.projectTimezone})`;
        source.textContent = "Project start timestamp";
        card.dataset.state = age.status;
      } catch (error) {
        pending = undefined;
        value.textContent = "Project start date unavailable";
        start.textContent = "The saved project chronology record could not be verified.";
        source.textContent = String(error && error.message || error);
        card.dataset.state = "unavailable";
      }
    }
    void refresh();
    return refresh;
  }

  const api = { parseProjectChronology, calculateProjectAge, formatProjectAge, formatProjectStart, mountProjectChronology };
  if (typeof module === "object" && module.exports) module.exports = api;
  if (root.document) {
    const refresh = mountProjectChronology(root.document);
    root.addEventListener("focus", refresh);
    root.document.addEventListener("visibilitychange", () => {
      if (root.document.visibilityState === "visible") void refresh();
    });
    root.setInterval(() => { void refresh(); }, 60 * 1000);
  }
})(typeof globalThis === "object" ? globalThis : this);
