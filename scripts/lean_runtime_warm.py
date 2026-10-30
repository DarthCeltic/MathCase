"""Keep one exact, network-disabled Lean import environment warm for Proof Desk.

This worker only opens a task-independent import smoke file. It never receives a
case statement or provider data. The ordinary verifier still starts a fresh
isolated Lean job for every statement and proof candidate.
"""

from __future__ import annotations

import hashlib
import copy
import json
import os
import queue
import re
import struct
import subprocess
import threading
import time
import uuid
from datetime import datetime, timezone, timedelta
from pathlib import Path, PurePosixPath
from typing import Any


WARM_SOURCE_SCHEMA = "mathcase-lean-warm-environment-v1"
WARM_FILE = "MathCaseWarmEnvironment.lean"
WARM_IMPORT_RE = re.compile(r"^[A-Za-z_][A-Za-z0-9_'.]*$")
IDLE_PAUSE_SECONDS = 300
DOCKER_MEMORY = "4g"
DOCKER_CPUS = "2"
DOCKER_PIDS = "128"
LSP_DOCUMENT_URI = "file:///mathcase/input/" + WARM_FILE
MAX_LSP_BODY_BYTES = 8 << 20
MAX_LSP_HEADER_BYTES = 8192
MAX_LSP_MESSAGES = 128
IMPORT_PREPARATION_SCHEMA = "mathcase-lean-import-preparation-v1"
IMPORT_ENVIRONMENT_SCHEMA = "mathcase-lean-import-environment-v1"
IMPORT_IMAGE = "sha256:ec3377f34aaf0b83502e6755d5403ca36382adb99e4c7ab1470d42a1ac5abdc7"
IMPORT_REVISION = "819816b2e0a3bf405af45ae5c7af2491d8f5bee6"
# The actual pinned Shell.lean caller uses believerTrustLevel + 1. Do not
# replace it with runFrontend's API default or change candidate trust flags.
IMPORT_OPTIONS = "PINNED_SHELL_DEFAULT_BELIEVER_PLUS_ONE_V1"
IMPORT_HEADER_LIMIT = 128 << 20
IMPORT_DEPS_LIMIT = 2 << 20
IMPORT_RECEIPT_LIMIT = 1 << 20
IMPORT_OUTPUT_LIMIT = 2 << 20


def _import_environment(environment: dict[str, Any], worker_source: bytes) -> tuple[dict[str, Any], bytes] | None:
    identity = environment["identity"]
    manifest = environment["manifest"]
    if identity["image_digest"] != IMPORT_IMAGE or identity["toolchain"] != "leanprover/lean4:v4.33.1" or identity["imports"] != ["Mathlib.Data.Nat.Prime.Basic"]:
        return None
    source = ("\n".join("import " + item for item in identity["imports"]) + "\n\n").encode()
    value = {
        "schema_version": IMPORT_ENVIRONMENT_SCHEMA, "image": identity["image_digest"],
        "manifest_path": identity["manifest_path"], "manifest_sha256": identity["manifest_sha256"],
        "snapshot_id": manifest["snapshot_id"], "toolchain": identity["toolchain"], "lean_revision": IMPORT_REVISION,
        "imports": identity["imports"], "module_search_path": manifest["module_search_path"],
        "producer_source_sha256": _sha256(source), "worker_source_sha256": _sha256(worker_source),
        "compiler_options": IMPORT_OPTIONS, "header_limit_bytes": IMPORT_HEADER_LIMIT,
        "dependencies_limit_bytes": IMPORT_DEPS_LIMIT, "receipt_limit_bytes": IMPORT_RECEIPT_LIMIT,
        "timeout_seconds": 60, "memory": "4g", "cpus": "2", "pids": "128",
    }
    return value, source


def _import_header_description(data: bytes) -> dict[str, Any]:
    if not 96 < len(data) <= IMPORT_HEADER_LIMIT or data[:5] != b"olean" or data[5] != 3 or data[7:40].rstrip(b"\0") != b"4.33.1" or data[40:80].decode("ascii") != IMPORT_REVISION:
        raise ValueError("the import preparation has an unsupported native header")
    payload = struct.unpack_from("<Q", data, 88)[0]
    offset = 96 + payload
    if offset + 4 > len(data):
        raise ValueError("the import preparation payload is truncated")
    count = struct.unpack_from("<I", data, offset)[0]
    offset += 4
    if count > (len(data) - offset) // 8:
        raise ValueError("the import preparation closure table is truncated")
    for (location,) in struct.iter_unpack("<Q", data[offset:offset + count * 8]):
        if location + 8 > payload:
            raise ValueError("the import preparation closure offset is invalid")
    offset += count * 8
    if offset + 4 > len(data) or struct.unpack_from("<I", data, offset)[0] != 1:
        raise ValueError("the import preparation has unexpected native libraries")
    offset += 4
    if offset + 12 > len(data):
        raise ValueError("the import preparation library table is truncated")
    size = struct.unpack_from("<I", data, offset + 8)[0]
    offset += 12
    if size > 4096 or offset + size != len(data):
        raise ValueError("the import preparation library record is invalid")
    library = data[offset:offset + size].decode("ascii")
    if str(PurePosixPath(library)) not in {"/opt/lean/bin/../lib/lean/libleanshared.so", "/opt/lean/lib/lean/libleanshared.so"}:
        raise ValueError("the import preparation library is outside the pinned image runtime")
    import base64
    return {"header_prefix_base64": base64.b64encode(data[:96]).decode(), "closure_count": count, "libraries": [library]}


def _import_dependency_check(data: bytes, manifest: dict[str, Any]) -> None:
    if not 0 < len(data) <= IMPORT_DEPS_LIMIT:
        raise ValueError("the import preparation dependencies exceed their bound")
    inventory_path = Path(manifest["inventory_path"])
    if inventory_path.is_symlink() or not inventory_path.is_file() or inventory_path.stat().st_size > 128 << 20:
        raise ValueError("the qualified import inventory is unavailable")
    inventory = inventory_path.read_bytes()
    if _sha256(inventory) != manifest["inventory_sha256"]:
        raise ValueError("the qualified import inventory changed")
    paths = {"/mathcase/project/" + item["path"] for line in inventory.splitlines() if isinstance((item := json.loads(line)), dict) and isinstance(item.get("path"), str)}
    records = json.loads(data)
    suffixes = {"olean": ".olean", "oleanPrivate": ".olean.private", "oleanServer": ".olean.server", "ir": ".ir", "irSig": ".ir.sig"}
    if not isinstance(records, list) or not 0 < len(records) <= 20000:
        raise ValueError("the import preparation dependencies are malformed")
    for record in records:
        if not isinstance(record, dict) or not record.get("olean"):
            raise ValueError("an import preparation module is missing")
        for kind, filename in record.items():
            if kind not in suffixes or not isinstance(filename, str) or not filename.endswith(suffixes[kind]) or ".." in PurePosixPath(filename).parts or "\\" in filename or "\0" in filename or not (filename.startswith("/opt/lean/lib/lean/") or filename in paths):
                raise ValueError("an import dependency is outside the qualified immutable image")


def _sha256(value: bytes) -> str:
    return hashlib.sha256(value).hexdigest()


def _utc_now() -> str:
    return datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")


def _canonical_docker_executable(filename: str) -> str:
    """Bind aliases (including Windows .EXE case) to the actual filesystem path."""
    candidate = Path(filename).resolve(strict=True)
    if not candidate.is_file():
        raise ValueError("the Docker executable must resolve to a regular file")
    return str(candidate)


def _read_lsp_frame(stream: Any) -> dict[str, Any] | None:
    """Read one bounded frame; malformed/truncated input always fails closed."""
    headers: dict[str, str] = {}
    header_bytes = 0
    while True:
        line = stream.readline(MAX_LSP_HEADER_BYTES + 1)
        if not line and not header_bytes:
            return None
        header_bytes += len(line)
        if not line or header_bytes > MAX_LSP_HEADER_BYTES:
            raise RuntimeError("Lean language server returned truncated or excessive headers")
        if line in (b"\r\n", b"\n"):
            break
        try:
            key, value = line.decode("ascii", errors="strict").split(":", 1)
        except (ValueError, UnicodeDecodeError) as exc:
            raise RuntimeError("Lean language server returned an invalid header") from exc
        key = key.lower().strip()
        if not key or key in headers:
            raise RuntimeError("Lean language server returned duplicate or empty headers")
        headers[key] = value.strip()
    length_text = headers.get("content-length", "")
    if not length_text.isascii() or not length_text.isdecimal():
        raise RuntimeError("Lean language server returned an invalid message length")
    length = int(length_text)
    if length <= 0 or length > MAX_LSP_BODY_BYTES:
        raise RuntimeError("Lean language server returned an invalid message length")
    body = bytearray()
    while len(body) < length:
        chunk = stream.read(length - len(body))
        if not chunk:
            raise RuntimeError("Lean language server response was truncated")
        body.extend(chunk)
    message = json.loads(bytes(body).decode("utf-8", errors="strict"))
    if not isinstance(message, dict) or message.get("jsonrpc") != "2.0":
        raise RuntimeError("Lean language server returned a non-object or invalid JSON-RPC message")
    return message


def _profile_environment(root: Path, profile: dict[str, Any]) -> dict[str, Any]:
    """Validate and freeze only the exact pinned Lean environment fields."""
    imports = copy.deepcopy(profile.get("imports"))
    image = profile.get("lean_sandbox_image")
    toolchain = profile.get("toolchain")
    manifest_path_value = profile.get("lean_snapshot_manifest")
    manifest_sha = profile.get("lean_snapshot_manifest_sha256")
    if (
        not isinstance(imports, list)
        or not imports
        or len(imports) > 64
        or any(not isinstance(item, str) or not WARM_IMPORT_RE.fullmatch(item) for item in imports)
        or len(set(imports)) != len(imports)
        or not isinstance(image, str)
        or not re.fullmatch(r"sha256:[0-9a-f]{64}", image)
        or not isinstance(toolchain, str)
        or not re.fullmatch(r"leanprover/lean4:[A-Za-z0-9_.-]+", toolchain)
        or not isinstance(manifest_path_value, str)
        or not isinstance(manifest_sha, str)
        or not re.fullmatch(r"[0-9a-f]{64}", manifest_sha)
    ):
        raise ValueError("the selected Lean warm environment has incomplete pinned identity")
    original_manifest_path = Path(manifest_path_value)
    manifest_path = original_manifest_path.resolve(strict=True)
    if not manifest_path.is_file() or original_manifest_path.is_symlink() or manifest_path.stat().st_size > 4 << 20:
        raise ValueError("the selected Lean warm manifest is not a regular file")
    manifest_raw = manifest_path.read_bytes()
    if _sha256(manifest_raw) != manifest_sha:
        raise ValueError("the selected Lean warm manifest digest changed")
    manifest = json.loads(manifest_raw.decode("utf-8", errors="strict"))
    if not isinstance(manifest, dict):
        raise ValueError("the selected Lean warm manifest is not an object")
    module_search = manifest.get("module_search_path")
    allowed_imports = manifest.get("allowed_imports")
    if (
        manifest.get("schema_version") != "mathcase-lean-snapshot-manifest-v1"
        or manifest.get("image_digest") != image
        or manifest.get("toolchain") != toolchain
        or not isinstance(module_search, list)
        or not module_search
        or any(not isinstance(path, str) or not re.fullmatch(r"/mathcase/[A-Za-z0-9_./-]+", path) or ".." in PurePosixPath(path).parts for path in module_search)
        or not isinstance(allowed_imports, list)
        or any(not isinstance(item, str) or not WARM_IMPORT_RE.fullmatch(item) for item in allowed_imports)
        or not set(imports).issubset(set(allowed_imports))
    ):
        raise ValueError("the selected Lean warm manifest does not authorize its exact image, toolchain, or imports")
    source = ("\n".join(f"import {item}" for item in imports) + "\n\nexample : True := by trivial\n").encode("utf-8")
    identity = {
        "schema_version": WARM_SOURCE_SCHEMA,
        "image_digest": image,
        "toolchain": toolchain,
        "manifest_path": manifest_path.as_posix(),
        "manifest_sha256": manifest_sha,
        "imports": imports,
        "module_search_path": module_search,
        "warm_source_sha256": _sha256(source),
        "docker_memory": DOCKER_MEMORY,
        "docker_cpus": DOCKER_CPUS,
        "docker_pids": DOCKER_PIDS,
        "container_network": "none",
        "case_material_included": False,
        "provider_credentials_passed": False,
        "worker_source_sha256": _sha256(Path(__file__).read_bytes()),
        "lsp_document_uri": LSP_DOCUMENT_URI,
        "max_lsp_body_bytes": MAX_LSP_BODY_BYTES,
        "max_lsp_header_bytes": MAX_LSP_HEADER_BYTES,
        "max_lsp_messages": MAX_LSP_MESSAGES,
    }
    identity["environment_sha256"] = _sha256(json.dumps(identity, sort_keys=True, separators=(",", ":")).encode("utf-8"))
    return {"identity": identity, "source": source, "manifest": manifest}


class LeanRuntimeWarmWorker:
    """One resource-bounded LSP worker, paused after five idle minutes."""

    def __init__(self, root: Path, *, idle_pause_seconds: int = IDLE_PAUSE_SECONDS) -> None:
        self.root = root.resolve(strict=True)
        self.state_root = self.root / "data/local/state/lean-runtime-warm"
        self.idle_pause_seconds = max(30, int(idle_pause_seconds))
        self._condition = threading.Condition(threading.RLock())
        self._lifecycle_lock = threading.RLock()
        self._rpc_lock = threading.Lock()
        self._write_lock = threading.Lock()
        self._leases = threading.local()
        self._owner_id = uuid.uuid4().hex
        self._profile: dict[str, Any] | None = None
        self._environment: dict[str, Any] | None = None
        self._status: dict[str, Any] = {"schema_version": WARM_SOURCE_SCHEMA, "state": "NOT_STARTED"}
        self._process: subprocess.Popen[bytes] | None = None
        self._header_process: subprocess.Popen[bytes] | None = None
        self._header_container: str | None = None
        self._header_environment_sha: str | None = None
        self._messages: queue.Queue[dict[str, Any] | BaseException | None] = queue.Queue(maxsize=MAX_LSP_MESSAGES)
        self._stderr_tail: queue.Queue[str] = queue.Queue(maxsize=40)
        self._reader_threads: list[threading.Thread] = []
        self._active_uses = 0
        self._last_activity = time.monotonic()
        self._request_id = 0
        self._generation = 0
        self._stop_requested = False
        self._idle_thread_started = False

    def start_background(self, profile: dict[str, Any]) -> dict[str, Any]:
        with self._lifecycle_lock:
            return self._start_background(profile)

    def _start_background(self, profile: dict[str, Any]) -> dict[str, Any]:
        try:
            environment = _profile_environment(self.root, profile)
        except (OSError, ValueError, json.JSONDecodeError, TypeError) as exc:
            with self._condition:
                # A bad new profile must not erase a currently acquired worker.
                return {
                    "schema_version": WARM_SOURCE_SCHEMA,
                    "state": "FAILED",
                    "error": str(exc),
                    "recorded_at_utc": _utc_now(),
                    "provider_calls": 0,
                }
        identity = environment["identity"]
        with self._condition:
            self._reconcile_process_state_locked()
            if (
                self._environment is not None
                and self._environment["identity"]["environment_sha256"] == identity["environment_sha256"]
                and self._status.get("state") in {"PREPARING", "READY", "PAUSED", "PAUSING"}
            ):
                return copy.deepcopy(self._status)
            if self._active_uses:
                return {
                    "schema_version": WARM_SOURCE_SCHEMA,
                    "state": "FAILED",
                    "error": "the selected Lean environment cannot change while the current warm runtime is in use",
                    "recorded_at_utc": _utc_now(),
                    "provider_calls": 0,
                }
            stop_existing = self._process is not None or self._status.get("state") in {
                "PREPARING", "READY", "PAUSED", "PAUSING", "STOPPING"
            }
        if stop_existing:
            self.stop()
        with self._condition:
            self._generation += 1
            generation = self._generation
            self._messages = queue.Queue(maxsize=MAX_LSP_MESSAGES)
            self._stderr_tail = queue.Queue(maxsize=40)
            start_idle_thread = not self._idle_thread_started
            self._idle_thread_started = True
            self._profile = copy.deepcopy(profile)
            self._environment = environment
            self._stop_requested = False
            self._status = {
                "schema_version": WARM_SOURCE_SCHEMA,
                "state": "PREPARING",
                "identity": identity,
                "started_at_utc": _utc_now(),
                "provider_calls": 0,
                "lean_proof_checks": 0,
                "training": "NOT_AUTHORIZED",
                "source_included": False,
                "case_material_included": False,
                "proof_result": "NONE",
                "resource_limits": {"memory": DOCKER_MEMORY, "cpus": DOCKER_CPUS, "pids": DOCKER_PIDS},
                "idle_pause_after_seconds": self.idle_pause_seconds,
                "generation": generation,
                "owner_id": self._owner_id,
            }
            self._condition.notify_all()
        if start_idle_thread:
            threading.Thread(target=self._idle_pause_loop, name="mathcase-lean-warm-idle", daemon=True).start()
        threading.Thread(target=self._prepare_worker, args=(generation,), name="mathcase-lean-warm-prepare", daemon=True).start()
        return self.status()

    def peek_status(self) -> dict[str, Any]:
        """Observe saved state without Docker/process I/O or changing leases.

        This snapshot is suitable for dispatch receipts. It neither refreshes
        liveness/resources nor starts, resumes, pauses, or acquires a worker.
        """
        with self._condition:
            return copy.deepcopy(self._status)

    def status(self) -> dict[str, Any]:
        with self._condition:
            self._reconcile_process_state_locked()
            result = copy.deepcopy(self._status)
        container = result.get("container_name")
        if isinstance(container, str) and result.get("state") in {"READY", "PAUSED"}:
            result["resource_observation"] = self._docker_stats(container)
        return result

    def acquire_ready(self, profile: dict[str, Any], *, timeout_seconds: float = 300.0) -> dict[str, Any]:
        started = self.start_background(profile)
        if started.get("state") == "FAILED":
            return started
        deadline = time.monotonic() + max(1.0, timeout_seconds)
        generation = started.get("generation")
        with self._condition:
            while generation == self._generation and self._status.get("state") in {"PREPARING", "PAUSING"} and time.monotonic() < deadline:
                self._condition.wait(min(1.0, max(0.05, deadline - time.monotonic())))
            if generation != self._generation or self._stop_requested:
                return {"schema_version": WARM_SOURCE_SCHEMA, "state": "CANCELLED", "provider_calls": 0}
            self._reconcile_process_state_locked()
            state = self._status.get("state")
            if state not in {"READY", "PAUSED"}:
                return copy.deepcopy(self._status)
            self._active_uses += 1
            container = self._status.get("container_name")
            process = self._process
            messages = self._messages
        try:
            # LSP response consumption is serial: concurrent callers must not
            # discard one another's IDs or issue a duplicate Docker unpause.
            if not self._rpc_lock.acquire(timeout=max(0.05, deadline - time.monotonic())):
                raise TimeoutError("Lean warm worker health request remained busy")
            try:
                self._assert_current_generation(generation)
                with self._condition:
                    paused = self._status.get("state") == "PAUSED"
                if paused and isinstance(container, str):
                    result = subprocess.run(self._docker_args("unpause", container), cwd=self.root, capture_output=True, timeout=10, env=self._docker_environment())
                    if result.returncode != 0:
                        raise RuntimeError("the pinned Lean warm container could not resume")
                    self._assert_current_generation(generation)
                    with self._condition:
                        self._status["state"] = "READY"
                        self._status["resumed_at_utc"] = _utc_now()
                if process is None or process.poll() is not None:
                    raise RuntimeError("the pinned Lean warm worker is not running")
                self._health_check(timeout=max(0.05, min(8.0, deadline - time.monotonic())), generation=generation, messages=messages)
            finally:
                self._rpc_lock.release()
            with self._condition:
                self._assert_current_generation(generation)
                self._last_activity = time.monotonic()
                self._status["last_used_at_utc"] = _utc_now()
                self._status["state"] = "READY"
                leases = getattr(self._leases, "generations", [])
                leases.append(generation)
                self._leases.generations = leases
                result = copy.deepcopy(self._status)
                result["acquired"] = True
                return result
        except (OSError, RuntimeError, subprocess.SubprocessError, TimeoutError) as exc:
            with self._condition:
                if generation == self._generation and not self._stop_requested:
                    self._status["state"] = "FAILED"
                    self._status["error"] = str(exc)
                    self._status["failed_at_utc"] = _utc_now()
                    self._status["retry_on_next_request"] = True
                    self._condition.notify_all()
                else:
                    return {"schema_version": WARM_SOURCE_SCHEMA, "state": "CANCELLED", "provider_calls": 0}
            with self._condition:
                if generation == self._generation:
                    self._active_uses = max(0, self._active_uses - 1)
                    self._condition.notify_all()
            return self.status()

    def release(self) -> None:
        with self._condition:
            leases = getattr(self._leases, "generations", [])
            if not leases:
                return
            generation = leases.pop()
            if generation != self._generation:
                return
            self._active_uses = max(0, self._active_uses - 1)
            self._last_activity = time.monotonic()
            self._condition.notify_all()

    def ensure_ready(self, profile: dict[str, Any], *, timeout_seconds: float = 300.0) -> dict[str, Any]:
        status = self.acquire_ready(profile, timeout_seconds=timeout_seconds)
        if status.get("acquired") is True:
            self.release()
            status.pop("acquired", None)
            return status
        return status

    def stop(self) -> None:
        with self._lifecycle_lock:
            self._stop()

    def _stop(self) -> None:
        with self._condition:
            self._generation += 1
            self._stop_requested = True
            process = self._process
            messages = self._messages
            container = self._status.get("container_name")
            environment_sha = (self._environment.get("identity") or {}).get("environment_sha256") if self._environment else None
            header_process = self._header_process
            header_container = self._header_container
            header_environment_sha = self._header_environment_sha
            self._status["state"] = "STOPPING"
            self._condition.notify_all()
        if header_container:
            self._remove_owned_container(header_container, environment_sha=header_environment_sha, component="lean-import-preparation")
        if header_process is not None and header_process.poll() is None:
            try:
                header_process.wait(timeout=5)
            except subprocess.TimeoutExpired:
                header_process.kill()
                header_process.wait(timeout=5)
        # A paused worker cannot answer shutdown. Remove only our labeled
        # container first, then reap its attached Docker client below.
        if isinstance(container, str):
            self._remove_owned_container(container, environment_sha=environment_sha)
        if process is not None and process.poll() is None:
            try:
                process.wait(timeout=5)
            except (OSError, RuntimeError, subprocess.SubprocessError, TimeoutError):
                process.terminate()
                try:
                    process.wait(timeout=5)
                except subprocess.TimeoutExpired:
                    process.kill()
                    process.wait(timeout=5)
        with self._condition:
            if self._process is process:
                self._process = None
            self._status["state"] = "STOPPED"
            self._active_uses = 0
            self._status["stopped_at_utc"] = _utc_now()
            self._condition.notify_all()

    def _prepare_worker(self, generation: int) -> None:
        prepare_started = time.monotonic()
        with self._condition:
            if generation != self._generation or self._stop_requested:
                return
            environment = self._environment
            profile = self._profile
            messages = self._messages
        if environment is None or profile is None:
            return
        process: subprocess.Popen[bytes] | None = None
        container: str | None = None
        try:
            image = environment["identity"]["image_digest"]
            manifest = environment["manifest"]
            self._assert_current_generation(generation)
            docker = shutil_which("docker")
            if not docker:
                raise RuntimeError("Docker is unavailable for the optional warm Lean environment")
            docker = _canonical_docker_executable(docker)
            inspected = subprocess.run([docker, "image", "inspect", "--format", "{{.Id}}", image], cwd=self.root, capture_output=True, timeout=15, env=self._docker_environment())
            image_id = inspected.stdout.decode("utf-8", errors="replace").strip()
            if inspected.returncode != 0 or image_id != image:
                raise RuntimeError("the pinned Lean image is unavailable or has the wrong image ID")
            self._assert_current_generation(generation)
            directory = self.state_root / environment["identity"]["environment_sha256"]
            directory.mkdir(parents=True, exist_ok=True)
            source_path = directory / WARM_FILE
            source = environment["source"]
            if source_path.exists() and source_path.read_bytes() != source:
                raise RuntimeError("the exact Lean warm source changed under its pinned environment identity")
            if not source_path.exists():
                source_path.write_bytes(source)
                os.chmod(source_path, 0o444)
            zoneinfo = directory / "zoneinfo"
            zoneinfo.mkdir(exist_ok=True)
            utc_zone = zoneinfo / "UTC"
            tzif = struct.pack(">4sB15x6I", b"TZif", 0, 0, 0, 0, 0, 1, 4) + struct.pack(">iBB", 0, 0, 0) + b"UTC\0"
            if utc_zone.exists() and utc_zone.read_bytes() != tzif:
                raise RuntimeError("the pinned UTC timezone file changed")
            if not utc_zone.exists():
                utc_zone.write_bytes(tzif)
                os.chmod(utc_zone, 0o444)
            os.chmod(zoneinfo, 0o555)
            os.chmod(directory, 0o555)
            container = "mathcase-warm-" + self._owner_id[:12] + "-" + str(generation)
            self._assert_current_generation(generation)
            args = self._container_args(docker, container, image, manifest, source_path, zoneinfo, environment_sha=environment["identity"]["environment_sha256"])
            process = subprocess.Popen(
                args,
                cwd=self.root,
                stdin=subprocess.PIPE,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                bufsize=0,
                env=self._docker_environment(),
            )
            with self._condition:
                if generation != self._generation or self._stop_requested:
                    raise RuntimeError("the pinned Lean warm worker was superseded during startup")
                self._process = process
                self._status["container_name"] = container
                self._status["worker_pid"] = process.pid
            self._start_reader_threads(process, messages)
            initialize_id = self._next_request_id()
            self._send_lsp({
                "jsonrpc": "2.0",
                "id": initialize_id,
                "method": "initialize",
                "params": {
                    "processId": None,
                    "rootUri": "file:///mathcase",
                    "capabilities": {},
                    "workspaceFolders": [{"uri": "file:///mathcase", "name": "mathcase-warm-environment"}],
                },
            }, process=process, generation=generation)
            init = self._wait_for_response(initialize_id, timeout=30.0, messages=messages, generation=generation)
            if init.get("error") or not isinstance(init.get("result"), dict):
                raise RuntimeError("Lean language server initialization failed")
            self._send_lsp({"jsonrpc": "2.0", "method": "initialized", "params": {}}, process=process, generation=generation)
            self._send_lsp({
                "jsonrpc": "2.0",
                "method": "textDocument/didOpen",
                "params": {"textDocument": {
                    "uri": LSP_DOCUMENT_URI,
                    "languageId": "lean4",
                    "version": 1,
                    "text": source.decode("utf-8", errors="strict"),
                }},
            }, process=process, generation=generation)
            diagnostic = self._wait_for_diagnostics(timeout=240.0, messages=messages, generation=generation)
            errors = [item for item in diagnostic.get("diagnostics", []) if item.get("severity") == 1]
            if errors:
                raise RuntimeError("the exact pinned Lean import warm-up returned an error diagnostic")
            import_preparation = self._prepare_import_header(generation, environment, docker, image_id)
            with self._condition:
                if generation != self._generation or self._stop_requested or self._process is not process:
                    raise RuntimeError("the pinned Lean warm worker was superseded before readiness")
                self._status["state"] = "READY"
                self._status["ready_at_utc"] = _utc_now()
                self._status["warm_check"] = "EXACT_IMPORT_FILE_OPENED_WITHOUT_ERRORS"
                self._status["import_preparation"] = import_preparation
                self._status["ready_meaning"] = "Pinned imports are prepared; a qualified native header may be consumed by fresh statement and candidate processes. Actual consumption is recorded in Lean receipts."
                self._status["warm_source_path"] = source_path.resolve(strict=True).relative_to(self.root).as_posix()
                self._status["warm_source_sha256"] = _sha256(source)
                self._status["provider_calls"] = 0
                self._status["preparation_duration_seconds"] = round(time.monotonic() - prepare_started, 6)
                self._last_activity = time.monotonic()
                self._condition.notify_all()
        except (OSError, ValueError, RuntimeError, subprocess.SubprocessError, TimeoutError, json.JSONDecodeError) as exc:
            if process is not None and process.poll() is None:
                process.terminate()
                try:
                    process.wait(timeout=5)
                except subprocess.TimeoutExpired:
                    process.kill()
                    process.wait(timeout=5)
            if container:
                self._remove_owned_container(
                    container,
                    environment_sha=environment["identity"]["environment_sha256"],
                )
            with self._condition:
                if self._process is process:
                    self._process = None
                if generation == self._generation and not self._stop_requested:
                    self._status["state"] = "FAILED"
                    self._status["error"] = str(exc)
                    self._status["failed_at_utc"] = _utc_now()
                    self._status["retry_on_next_request"] = True
                    self._condition.notify_all()

    def _prepare_import_header(self, generation: int, environment: dict[str, Any], docker: str, image_id: str) -> dict[str, Any]:
        """Publish one immutable, case-free header packet, never a proof result."""
        worker_source = Path(__file__).read_bytes()
        if len(worker_source) > 512 << 10:
            raise ValueError("the import producer source exceeds its qualification bound")
        prepared = _import_environment(environment, worker_source)
        if prepared is None:
            return {"state": "UNSUPPORTED", "schema_version": IMPORT_PREPARATION_SCHEMA}
        identity, source = prepared
        environment_sha = _sha256(json.dumps(identity, sort_keys=True, separators=(",", ":")).encode())
        evidence_id = "import-" + uuid.uuid4().hex
        directory = self.state_root / "import-preparations" / environment_sha / evidence_id
        directory.mkdir(parents=True, mode=0o700)
        source_path = directory / "WarmImports.lean"
        source_path.write_bytes(source)
        os.chmod(source_path, 0o444)
        output = directory / "output"
        output.mkdir(mode=0o700)
        os.chmod(output, 0o777)
        container = "mathcase-warm-" + self._owner_id[:12] + "-imports-" + str(generation) + "-" + uuid.uuid4().hex[:8]
        args = [
            docker, "run", "--rm", "--name", container,
            "--label", "com.mathcase.component=lean-import-preparation",
            "--label", "com.mathcase.worker-owner=" + self._owner_id,
            "--label", "com.mathcase.environment-sha256=" + environment_sha,
            "--pull=never", "--network=none", "--read-only", "--user=65532:65532",
            "--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128",
            "--ulimit", "fsize=134217728:134217728",
            "--tmpfs", "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777",
            "--tmpfs", "/mathcase/work:rw,noexec,nosuid,nodev,size=128m,mode=1777",
            "--tmpfs", "/mathcase/cache:rw,noexec,nosuid,nodev,size=512m,mode=1777",
            "--workdir=/mathcase/work", "--env=HOME=/tmp", "--env=TMPDIR=/tmp", "--env=TMP=/tmp",
            "--env=LAKE_HOME=/mathcase/cache", "--env=LEAN_SYSROOT=/opt/lean",
            "--env=LEAN_PATH=" + ":".join(identity["module_search_path"]),
            "--mount", "type=bind,source=" + source_path.resolve().as_posix() + ",target=/mathcase/input/WarmImports.lean,readonly",
            "--mount", "type=bind,source=" + output.resolve().as_posix() + ",target=/mathcase/output",
            "--entrypoint=lean", identity["image"], "--root=/mathcase/input",
            "--incr-header-save=/mathcase/output/imports.snap", "/mathcase/input/WarmImports.lean",
        ]
        started = datetime.now(timezone.utc)
        process = None
        completed = False
        stdout_path, stderr_path = directory / "stdout.bin", directory / "stderr.bin"
        try:
            with stdout_path.open("xb") as stdout, stderr_path.open("xb") as stderr:
                with self._lifecycle_lock:
                    self._assert_current_generation(generation)
                    process = subprocess.Popen(args, cwd=self.root, stdout=stdout, stderr=stderr, env=self._docker_environment())
                    with self._condition:
                        self._header_process, self._header_container, self._header_environment_sha = process, container, environment_sha
                deadline = time.monotonic() + 60
                while process.poll() is None:
                    self._assert_current_generation(generation)
                    if time.monotonic() >= deadline:
                        raise TimeoutError("the import-only header producer exceeded its 60-second bound")
                    if stdout_path.stat().st_size > IMPORT_OUTPUT_LIMIT or stderr_path.stat().st_size > IMPORT_OUTPUT_LIMIT:
                        raise RuntimeError("the import-only header producer exceeded its output bound")
                    time.sleep(0.02)
                finished = datetime.now(timezone.utc)
            if stdout_path.stat().st_size > IMPORT_OUTPUT_LIMIT or stderr_path.stat().st_size > IMPORT_OUTPUT_LIMIT:
                raise RuntimeError("the import-only producer output exceeded its bound")
            stdout, stderr = stdout_path.read_bytes(), stderr_path.read_bytes()
            if process.returncode != 0 or stdout or stderr:
                raise RuntimeError("the import-only header producer failed or emitted diagnostics; no packet was published")
            header_path, deps_path = output / "imports.snap", output / "imports.snap.deps"
            for filename, limit in ((header_path, IMPORT_HEADER_LIMIT), (deps_path, IMPORT_DEPS_LIMIT)):
                if filename.is_symlink() or not filename.is_file() or not 0 < filename.stat().st_size <= limit:
                    raise ValueError("the import-only producer did not emit complete bounded regular files")
            header, deps = header_path.read_bytes(), deps_path.read_bytes()
            description = _import_header_description(header)
            _import_dependency_check(deps, environment["manifest"])
            self._assert_current_generation(generation)
            import base64
            recorded = datetime.now(timezone.utc)
            receipt = {
                "schema_version": IMPORT_PREPARATION_SCHEMA, "evidence_id": evidence_id,
                "recorded_at_utc": recorded.isoformat().replace("+00:00", "Z"),
                "expires_at_utc": (recorded + timedelta(hours=24)).isoformat().replace("+00:00", "Z"),
                "environment_sha256": environment_sha, "image": identity["image"], "image_id": image_id,
                "manifest_path": str(Path(identity["manifest_path"])), "manifest_sha256": identity["manifest_sha256"],
                "snapshot_id": identity["snapshot_id"], "toolchain": identity["toolchain"], "lean_revision": IMPORT_REVISION,
                "imports": identity["imports"], "module_search_path": identity["module_search_path"], "compiler_options": IMPORT_OPTIONS,
                "producer_source": source.decode(), "producer_source_sha256": _sha256(source),
                "worker_source_base64": base64.b64encode(worker_source).decode(), "worker_source_sha256": _sha256(worker_source),
                "header_sha256": _sha256(header), "header_bytes": len(header), **description,
                "dependencies_sha256": _sha256(deps), "dependencies_bytes": len(deps),
                "status": "PASSED", "exit_code": 0, "output_truncated": False,
                "stdout_bytes": 0, "stderr_bytes": 0, "stdout_sha256": _sha256(stdout), "stderr_sha256": _sha256(stderr),
                "sandbox_execution": {"docker_executable": docker, "container_name": container, "execution_mode": "LEAN_DIRECT",
                    "command_argv": args, "started_at_utc": started.isoformat().replace("+00:00", "Z"),
                    "finished_at_utc": finished.isoformat().replace("+00:00", "Z"), "exit_code": 0,
                    "timed_out": False, "cleanup_attempted": False, "cleanup_succeeded": False},
            }
            data = (json.dumps(receipt, sort_keys=True, separators=(",", ":")) + "\n").encode()
            if len(data) > IMPORT_RECEIPT_LIMIT:
                raise ValueError("the import preparation metadata exceeded its bound")
            with self._lifecycle_lock:
                self._assert_current_generation(generation)
                os.replace(header_path, directory / "imports.snap")
                os.replace(deps_path, directory / "imports.snap.deps")
                for filename in (directory / "imports.snap", directory / "imports.snap.deps"):
                    os.chmod(filename, 0o444)
                temporary = directory / "preparation.tmp"
                temporary.write_bytes(data)
                os.chmod(temporary, 0o444)
                os.replace(temporary, directory / "preparation.json")
            completed = True
            return {"state": "READY", "schema_version": IMPORT_PREPARATION_SCHEMA,
                    "receipt_path": str(directory / "preparation.json"), "receipt_sha256": _sha256(data),
                    "environment_sha256": environment_sha, "image": identity["image"],
                    "manifest_sha256": identity["manifest_sha256"], "imports": identity["imports"],
                    "header_sha256": receipt["header_sha256"], "expires_at_utc": receipt["expires_at_utc"]}
        finally:
            if not completed and process is not None:
                self._remove_owned_container(container, environment_sha=environment_sha, component="lean-import-preparation")
                if process.poll() is None:
                    process.kill()
                    process.wait(timeout=5)
            with self._condition:
                if self._header_process is process:
                    self._header_process = self._header_container = self._header_environment_sha = None

    def _container_args(self, docker: str, name: str, image: str, manifest: dict[str, Any], source: Path, zoneinfo: Path, *, environment_sha: str) -> list[str]:
        path = lambda value: str(Path(value).resolve(strict=True)).replace("\\", "/")
        search_path = ":".join(manifest["module_search_path"])
        return [
            docker, "run", "--rm", "-i", "--pull=never", "--name", name,
            "--label", "com.mathcase.component=lean-warm-runtime",
            "--label", "com.mathcase.environment-sha256=" + environment_sha,
            "--label", "com.mathcase.worker-owner=" + self._owner_id,
            "--network=none", "--read-only", "--user=65532:65532", "--cap-drop=ALL",
            "--security-opt=no-new-privileges:true", "--cpus=" + DOCKER_CPUS,
            "--memory=" + DOCKER_MEMORY, "--pids-limit=" + DOCKER_PIDS,
            "--ulimit", "fsize=16777216:16777216",
            "--tmpfs", "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777",
            "--tmpfs", "/mathcase/work:rw,noexec,nosuid,nodev,size=128m,mode=1777",
            "--tmpfs", "/mathcase/cache:rw,noexec,nosuid,nodev,size=512m,mode=1777",
            "--workdir=/mathcase/work", "--env=HOME=/tmp", "--env=TZ=UTC",
            "--env=LEAN_SYSROOT=/opt/lean", "--env=LEAN_PATH=" + search_path,
            "--mount", "type=bind,source=" + path(source) + ",target=/mathcase/input/" + WARM_FILE + ",readonly",
            "--mount", "type=bind,source=" + path(zoneinfo) + ",target=/usr/share/zoneinfo,readonly",
            "--entrypoint=lean", image, "--server",
        ]

    def _start_reader_threads(
        self,
        process: subprocess.Popen[bytes],
        messages: queue.Queue[dict[str, Any] | BaseException | None],
    ) -> None:
        def read_frames() -> None:
            try:
                while True:
                    message = _read_lsp_frame(process.stdout)
                    messages.put_nowait(message)
                    if message is None:
                        return
            except BaseException as exc:
                # Overflow must not deadlock a retired reader or silently drop
                # a response. Preserve one terminal channel failure instead.
                if messages.full():
                    while True:
                        try:
                            messages.get_nowait()
                        except queue.Empty:
                            break
                try:
                    messages.put_nowait(exc)
                except queue.Full:
                    pass

        def read_errors() -> None:
            for line in iter(lambda: process.stderr.readline(2048), b""):
                text = line.decode("utf-8", errors="replace")[:500]
                try:
                    self._stderr_tail.put_nowait(text)
                except queue.Full:
                    try:
                        self._stderr_tail.get_nowait()
                    except queue.Empty:
                        pass
                    try:
                        self._stderr_tail.put_nowait(text)
                    except queue.Full:
                        pass

        self._reader_threads = [thread for thread in self._reader_threads if thread.is_alive()]
        for target, name in ((read_frames, "mathcase-lean-warm-stdout"), (read_errors, "mathcase-lean-warm-stderr")):
            thread = threading.Thread(target=target, name=name, daemon=True)
            self._reader_threads.append(thread)
            thread.start()

    def _send_lsp(
        self,
        message: dict[str, Any],
        *,
        process: subprocess.Popen[bytes] | None = None,
        generation: int | None = None,
    ) -> None:
        process = process or self._process
        if generation is not None:
            with self._condition:
                if generation != self._generation or self._stop_requested:
                    raise RuntimeError("Lean warm worker generation was superseded")
        if process is None or process.stdin is None or process.poll() is not None:
            raise RuntimeError("Lean warm worker is not accepting LSP messages")
        body = json.dumps(message, ensure_ascii=False, separators=(",", ":")).encode("utf-8")
        frame = b"Content-Length: " + str(len(body)).encode("ascii") + b"\r\n\r\n" + body
        with self._write_lock:
            remaining = memoryview(frame)
            while remaining:
                written = process.stdin.write(remaining)
                if not written:
                    raise RuntimeError("Lean warm worker closed while accepting an LSP frame")
                remaining = remaining[written:]
            process.stdin.flush()

    def _wait_for_response(
        self,
        request_id: int | str,
        *,
        timeout: float,
        messages: queue.Queue[dict[str, Any] | BaseException | None] | None = None,
        generation: int | None = None,
    ) -> dict[str, Any]:
        deadline = time.monotonic() + timeout
        while time.monotonic() < deadline:
            if generation is not None:
                self._assert_current_generation(generation)
            message = self._next_message(deadline, messages=messages)
            if message is None:
                raise RuntimeError("Lean warm worker closed its LSP channel")
            if message.get("id") == request_id:
                return message
        raise TimeoutError("Lean warm worker did not answer its bounded LSP request")

    def _wait_for_diagnostics(
        self,
        *,
        timeout: float,
        messages: queue.Queue[dict[str, Any] | BaseException | None] | None = None,
        generation: int | None = None,
    ) -> dict[str, Any]:
        deadline = time.monotonic() + timeout
        while time.monotonic() < deadline:
            if generation is not None:
                self._assert_current_generation(generation)
            message = self._next_message(deadline, messages=messages)
            if message is None:
                raise RuntimeError("Lean warm worker closed before import diagnostics arrived")
            if message.get("method") == "textDocument/publishDiagnostics" and message.get("params", {}).get("uri") == LSP_DOCUMENT_URI:
                return message["params"]
        raise TimeoutError("Lean warm worker did not finish the pinned import smoke file")

    def _health_check(
        self,
        *,
        timeout: float,
        generation: int,
        messages: queue.Queue[dict[str, Any] | BaseException | None],
    ) -> None:
        request_id = self._next_request_id()
        process = self._process
        self._send_lsp({
            "jsonrpc": "2.0",
            "id": request_id,
            "method": "textDocument/documentSymbol",
            "params": {"textDocument": {"uri": LSP_DOCUMENT_URI}},
        }, process=process, generation=generation)
        response = self._wait_for_response(request_id, timeout=timeout, messages=messages, generation=generation)
        if response.get("error"):
            raise RuntimeError("the resumed Lean warm worker failed its bounded health request")

    def _next_message(
        self,
        deadline: float,
        *,
        messages: queue.Queue[dict[str, Any] | BaseException | None] | None = None,
    ) -> dict[str, Any] | None:
        source = messages or self._messages
        try:
            message = source.get(timeout=max(0.05, min(0.5, deadline - time.monotonic())))
        except queue.Empty:
            return {}
        if message is None:
            return None
        if isinstance(message, BaseException):
            raise RuntimeError("Lean warm worker LSP channel failed") from message
        return message

    def _assert_current_generation(self, generation: int) -> None:
        with self._condition:
            if generation != self._generation or self._stop_requested:
                raise RuntimeError("the pinned Lean warm worker was superseded")

    def _next_request_id(self) -> int:
        with self._condition:
            self._request_id += 1
            return self._request_id

    def _idle_pause_loop(self) -> None:
        while True:
            time.sleep(2.0)
            self._pause_if_idle()

    def _pause_if_idle(self) -> None:
        with self._condition:
            if self._stop_requested or self._status.get("state") != "READY" or self._active_uses or time.monotonic() - self._last_activity < self.idle_pause_seconds:
                return
            container = self._status.get("container_name")
            if not isinstance(container, str):
                return
            generation = self._generation
            self._status["state"] = "PAUSING"
        error = None
        try:
            result = subprocess.run(self._docker_args("pause", container), cwd=self.root, capture_output=True, timeout=10, env=self._docker_environment())
            if result.returncode != 0:
                error = "Docker could not pause the idle Lean warm worker"
        except (OSError, subprocess.SubprocessError):
            error = "Docker did not complete the bounded idle pause"
        with self._condition:
            if generation != self._generation or self._stop_requested or self._status.get("container_name") != container or self._status.get("state") != "PAUSING":
                return
            self._status["state"] = "FAILED" if error else "PAUSED"
            if error:
                self._status["error"] = error
                self._status["retry_on_next_request"] = True
            else:
                self._status["paused_at_utc"] = _utc_now()
            self._condition.notify_all()

    def _reconcile_process_state_locked(self) -> None:
        if self._status.get("state") in {"READY", "PAUSED"} and (self._process is None or self._process.poll() is not None):
            self._status["state"] = "FAILED"
            self._status["error"] = "Lean warm worker exited unexpectedly"
            self._status["failed_at_utc"] = _utc_now()
            self._condition.notify_all()

    def _docker_stats(self, container: str) -> dict[str, Any]:
        docker = shutil_which("docker")
        if not docker:
            return {"state": "UNAVAILABLE"}
        try:
            result = subprocess.run([docker, "stats", "--no-stream", "--format", "{{.MemUsage}}|{{.CPUPerc}}", container], cwd=self.root, capture_output=True, timeout=5, env=self._docker_environment())
        except (OSError, subprocess.SubprocessError):
            return {"state": "UNAVAILABLE"}
        if result.returncode != 0:
            return {"state": "UNAVAILABLE"}
        value = result.stdout.decode("utf-8", errors="replace").strip()
        memory, separator, cpu = value.partition("|")
        return {"state": "OBSERVED" if separator else "UNAVAILABLE", "memory": memory if separator else None, "cpu": cpu if separator else None}

    def _docker_args(self, *args: str) -> list[str]:
        docker = shutil_which("docker") or "docker"
        return [docker, *args]

    def _remove_owned_container(self, container: str, *, environment_sha: str | None, component: str = "lean-warm-runtime") -> None:
        """Remove only a container carrying this worker's exact identity labels."""
        expected_sha = environment_sha
        if not isinstance(expected_sha, str) or not container.startswith("mathcase-warm-" + self._owner_id[:12] + "-"):
            return
        try:
            inspected = subprocess.run(
                self._docker_args("inspect", "--format", "{{json .Config.Labels}}", container),
                cwd=self.root,
                capture_output=True,
                timeout=5 if component == "lean-import-preparation" else 15,
                env=self._docker_environment(),
            )
            if inspected.returncode != 0:
                return
            labels = json.loads(inspected.stdout.decode("utf-8", errors="strict"))
            if (
                not isinstance(labels, dict)
                or labels.get("com.mathcase.component") != component
                or labels.get("com.mathcase.environment-sha256") != expected_sha
                or labels.get("com.mathcase.worker-owner") != self._owner_id
            ):
                return
            subprocess.run(
                self._docker_args("rm", "--force", container),
                cwd=self.root,
                capture_output=True,
                timeout=5 if component == "lean-import-preparation" else 30,
                env=self._docker_environment(),
            )
        except (OSError, subprocess.SubprocessError, json.JSONDecodeError, UnicodeDecodeError):
            return

    @staticmethod
    def _docker_environment() -> dict[str, str]:
        allowed = {"PATH", "SYSTEMROOT", "WINDIR", "TEMP", "TMP", "USERPROFILE", "HOMEDRIVE", "HOMEPATH", "COMSPEC", "PATHEXT", "LOCALAPPDATA", "APPDATA", "DOCKER_CONFIG", "DOCKER_HOST"}
        return {key: value for key, value in os.environ.items() if key.upper() in allowed}

    def _record_error_tail(self) -> list[str]:
        return list(self._stderr_tail.queue)[-8:]


def shutil_which(command: str) -> str | None:
    from shutil import which
    return which(command)
