"""Run one bounded local command with explicit process-tree ownership."""

from __future__ import annotations

import ctypes
import os
import signal
import subprocess
import time
from dataclasses import dataclass
from typing import Mapping, Sequence


_CLEANUP_GRACE_SECONDS = 2.0


@dataclass(frozen=True)
class OwnedCommandResult:
    completed: subprocess.CompletedProcess[bytes]
    termination: dict[str, object]


class OwnedCommandTimeout(subprocess.TimeoutExpired):
    def __init__(
        self,
        command: Sequence[str],
        timeout: float,
        output: bytes | None,
        stderr: bytes | None,
        termination: dict[str, object],
    ) -> None:
        super().__init__(command, timeout, output=output, stderr=stderr)
        self.termination = termination


def run_owned_command(
    command: Sequence[str],
    *,
    cwd: str,
    env: Mapping[str, str],
    timeout: float,
) -> OwnedCommandResult:
    """Run a command in a kill-on-close Windows job or a new POSIX process group."""
    if not command or timeout <= 0:
        raise ValueError("owned command and positive timeout are required")

    job: int | None = None
    if os.name == "nt":
        job = _create_windows_job()
        flags = subprocess.CREATE_NEW_PROCESS_GROUP | 0x00000004  # CREATE_SUSPENDED
        try:
            process = subprocess.Popen(
                list(command), cwd=cwd, env=dict(env), stdin=subprocess.DEVNULL,
                stdout=subprocess.PIPE, stderr=subprocess.PIPE, creationflags=flags,
            )
            _assign_windows_job(job, process)
            _resume_suspended_process(process.pid)
        except BaseException:
            if "process" in locals():
                try:
                    _terminate_windows_job(job)
                    process.wait(timeout=_CLEANUP_GRACE_SECONDS)
                except (OSError, subprocess.TimeoutExpired):
                    try:
                        process.kill()
                    except OSError:
                        pass
            _close_windows_handle(job)
            raise
        owner = "WINDOWS_JOB_OBJECT_KILL_ON_CLOSE"
    else:
        process = subprocess.Popen(
            list(command), cwd=cwd, env=dict(env), stdin=subprocess.DEVNULL,
            stdout=subprocess.PIPE, stderr=subprocess.PIPE, start_new_session=True,
        )
        owner = "POSIX_PROCESS_GROUP"

    try:
        stdout, stderr = process.communicate(timeout=timeout)
    except subprocess.TimeoutExpired as error:
        stdout = error.output or b""
        stderr = error.stderr or b""
        termination = _stop_owned_process_tree(process, job, owner, timeout_fired=True)
        raise OwnedCommandTimeout(command, timeout, stdout, stderr, termination) from error
    except BaseException:
        _stop_owned_process_tree(process, job, owner, timeout_fired=False)
        raise

    termination = _stop_owned_process_tree(process, job, owner, timeout_fired=False)
    return OwnedCommandResult(
        subprocess.CompletedProcess(list(command), process.returncode, stdout, stderr),
        termination,
    )


def _stop_owned_process_tree(
    process: subprocess.Popen[bytes],
    job: int | None,
    owner: str,
    *,
    timeout_fired: bool,
) -> dict[str, object]:
    attempted = False
    method = "none"
    cleanup_error = ""
    remaining: int | None = None
    if os.name == "nt" and job is not None:
        try:
            remaining = _windows_job_active_processes(job)
            if timeout_fired or remaining > 0:
                attempted = True
                method = "TerminateJobObject"
                _terminate_windows_job(job)
                remaining = _wait_for_windows_job_empty(job, _CLEANUP_GRACE_SECONDS)
            process.wait(timeout=_CLEANUP_GRACE_SECONDS)
        except (OSError, subprocess.TimeoutExpired) as error:
            attempted = True
            method = "TerminateJobObject+taskkill"
            cleanup_error = str(error)[:400]
            try:
                subprocess.run(
                    ["taskkill", "/PID", str(process.pid), "/T", "/F"],
                    stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL,
                    stderr=subprocess.DEVNULL, timeout=_CLEANUP_GRACE_SECONDS,
                    check=False,
                )
                process.wait(timeout=_CLEANUP_GRACE_SECONDS)
                remaining = _wait_for_windows_job_empty(job, _CLEANUP_GRACE_SECONDS)
            except (OSError, subprocess.SubprocessError) as fallback_error:
                cleanup_error = f"{cleanup_error}; fallback: {fallback_error}"[:400]
        finally:
            _close_windows_handle(job)
    elif os.name != "nt":
        try:
            os.killpg(process.pid, 0)
        except ProcessLookupError:
            remaining = 0
        except OSError as error:
            attempted = True
            cleanup_error = str(error)[:400]
            remaining = None
        else:
            attempted = True
            method = "SIGTERM_then_SIGKILL_process_group"
            try:
                os.killpg(process.pid, signal.SIGTERM)
            except ProcessLookupError:
                pass
            deadline = time.monotonic() + _CLEANUP_GRACE_SECONDS / 2
            while time.monotonic() < deadline:
                if not _posix_process_group_exists(process.pid):
                    break
                time.sleep(0.05)
            if _posix_process_group_exists(process.pid):
                try:
                    os.killpg(process.pid, signal.SIGKILL)
                except ProcessLookupError:
                    pass
            deadline = time.monotonic() + _CLEANUP_GRACE_SECONDS / 2
            while time.monotonic() < deadline and _posix_process_group_exists(process.pid):
                time.sleep(0.05)
            remaining = 1 if _posix_process_group_exists(process.pid) else 0
        try:
            process.wait(timeout=_CLEANUP_GRACE_SECONDS)
        except subprocess.TimeoutExpired:
            attempted = True
            method = "SIGKILL_process_group_and_root"
            try:
                os.killpg(process.pid, signal.SIGKILL)
            except ProcessLookupError:
                pass
            try:
                process.kill()
                process.wait(timeout=_CLEANUP_GRACE_SECONDS)
            except (OSError, subprocess.TimeoutExpired) as error:
                cleanup_error = f"{cleanup_error}; root reap: {error}"[:400]

    return {
        "schema_version": "mathcase-owned-process-termination-v1",
        "pid": process.pid,
        "ownership": owner,
        "timeout_fired": timeout_fired,
        "cleanup_attempted": attempted,
        "cleanup_method": method,
        "cleanup_succeeded": remaining == 0 and not cleanup_error,
        "remaining_owned_processes": remaining,
        "root_exit_code": process.poll(),
        "cleanup_error": cleanup_error,
    }


def _posix_process_group_exists(process_group_id: int) -> bool:
    try:
        os.killpg(process_group_id, 0)
    except ProcessLookupError:
        return False
    except PermissionError:
        return True
    return True


def _create_windows_job() -> int:
    kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
    kernel32.CreateJobObjectW.argtypes = [ctypes.c_void_p, ctypes.c_wchar_p]
    kernel32.CreateJobObjectW.restype = ctypes.c_void_p
    handle = kernel32.CreateJobObjectW(None, None)
    if not handle:
        raise ctypes.WinError(ctypes.get_last_error())

    class BasicLimitInformation(ctypes.Structure):
        _fields_ = [
            ("PerProcessUserTimeLimit", ctypes.c_longlong),
            ("PerJobUserTimeLimit", ctypes.c_longlong),
            ("LimitFlags", ctypes.c_uint32),
            ("MinimumWorkingSetSize", ctypes.c_size_t),
            ("MaximumWorkingSetSize", ctypes.c_size_t),
            ("ActiveProcessLimit", ctypes.c_uint32),
            ("Affinity", ctypes.c_size_t),
            ("PriorityClass", ctypes.c_uint32),
            ("SchedulingClass", ctypes.c_uint32),
        ]

    class IO_COUNTERS(ctypes.Structure):
        _fields_ = [
            ("ReadOperationCount", ctypes.c_ulonglong),
            ("WriteOperationCount", ctypes.c_ulonglong),
            ("OtherOperationCount", ctypes.c_ulonglong),
            ("ReadTransferCount", ctypes.c_ulonglong),
            ("WriteTransferCount", ctypes.c_ulonglong),
            ("OtherTransferCount", ctypes.c_ulonglong),
        ]

    class ExtendedLimitInformation(ctypes.Structure):
        _fields_ = [
            ("BasicLimitInformation", BasicLimitInformation),
            ("IoInfo", IO_COUNTERS),
            ("ProcessMemoryLimit", ctypes.c_size_t),
            ("JobMemoryLimit", ctypes.c_size_t),
            ("PeakProcessMemoryUsed", ctypes.c_size_t),
            ("PeakJobMemoryUsed", ctypes.c_size_t),
        ]

    information = ExtendedLimitInformation()
    information.BasicLimitInformation.LimitFlags = 0x00002000  # JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE
    kernel32.SetInformationJobObject.argtypes = [ctypes.c_void_p, ctypes.c_int, ctypes.c_void_p, ctypes.c_uint32]
    kernel32.SetInformationJobObject.restype = ctypes.c_int
    if not kernel32.SetInformationJobObject(handle, 9, ctypes.byref(information), ctypes.sizeof(information)):
        error = ctypes.get_last_error()
        _close_windows_handle(int(handle))
        raise ctypes.WinError(error)
    return int(handle)


def _assign_windows_job(job: int, process: subprocess.Popen[bytes]) -> None:
    kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
    kernel32.AssignProcessToJobObject.argtypes = [ctypes.c_void_p, ctypes.c_void_p]
    kernel32.AssignProcessToJobObject.restype = ctypes.c_int
    if not kernel32.AssignProcessToJobObject(ctypes.c_void_p(job), ctypes.c_void_p(int(process._handle))):
        raise ctypes.WinError(ctypes.get_last_error())


def _resume_suspended_process(process_id: int) -> None:
    class ThreadEntry32(ctypes.Structure):
        _fields_ = [
            ("dwSize", ctypes.c_uint32), ("cntUsage", ctypes.c_uint32),
            ("th32ThreadID", ctypes.c_uint32), ("th32OwnerProcessID", ctypes.c_uint32),
            ("tpBasePri", ctypes.c_long), ("tpDeltaPri", ctypes.c_long),
            ("dwFlags", ctypes.c_uint32),
        ]

    kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
    kernel32.CreateToolhelp32Snapshot.argtypes = [ctypes.c_uint32, ctypes.c_uint32]
    kernel32.CreateToolhelp32Snapshot.restype = ctypes.c_void_p
    kernel32.Thread32First.argtypes = [ctypes.c_void_p, ctypes.POINTER(ThreadEntry32)]
    kernel32.Thread32First.restype = ctypes.c_int
    kernel32.Thread32Next.argtypes = [ctypes.c_void_p, ctypes.POINTER(ThreadEntry32)]
    kernel32.Thread32Next.restype = ctypes.c_int
    kernel32.OpenThread.argtypes = [ctypes.c_uint32, ctypes.c_int, ctypes.c_uint32]
    kernel32.OpenThread.restype = ctypes.c_void_p
    kernel32.ResumeThread.argtypes = [ctypes.c_void_p]
    kernel32.ResumeThread.restype = ctypes.c_uint32
    kernel32.CloseHandle.argtypes = [ctypes.c_void_p]
    kernel32.CloseHandle.restype = ctypes.c_int

    snapshot = kernel32.CreateToolhelp32Snapshot(0x00000004, 0)  # TH32CS_SNAPTHREAD
    if not snapshot or int(snapshot) == ctypes.c_void_p(-1).value:
        raise ctypes.WinError(ctypes.get_last_error())
    found = 0
    try:
        entry = ThreadEntry32()
        entry.dwSize = ctypes.sizeof(entry)
        has_entry = kernel32.Thread32First(snapshot, ctypes.byref(entry))
        while has_entry:
            if entry.th32OwnerProcessID == process_id:
                thread = kernel32.OpenThread(0x0002, False, entry.th32ThreadID)  # THREAD_SUSPEND_RESUME
                if not thread:
                    raise ctypes.WinError(ctypes.get_last_error())
                try:
                    if kernel32.ResumeThread(thread) == 0xFFFFFFFF:
                        raise ctypes.WinError(ctypes.get_last_error())
                    found += 1
                finally:
                    kernel32.CloseHandle(thread)
            has_entry = kernel32.Thread32Next(snapshot, ctypes.byref(entry))
    finally:
        kernel32.CloseHandle(snapshot)
    if found != 1:
        raise OSError(f"expected one suspended primary thread for process {process_id}; found {found}")


def _windows_job_active_processes(job: int) -> int:
    class BasicAccountingInformation(ctypes.Structure):
        _fields_ = [
            ("TotalUserTime", ctypes.c_longlong), ("TotalKernelTime", ctypes.c_longlong),
            ("ThisPeriodTotalUserTime", ctypes.c_longlong), ("ThisPeriodTotalKernelTime", ctypes.c_longlong),
            ("TotalPageFaultCount", ctypes.c_uint32), ("TotalProcesses", ctypes.c_uint32),
            ("ActiveProcesses", ctypes.c_uint32), ("TotalTerminatedProcesses", ctypes.c_uint32),
        ]

    kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
    kernel32.QueryInformationJobObject.argtypes = [ctypes.c_void_p, ctypes.c_int, ctypes.c_void_p, ctypes.c_uint32, ctypes.c_void_p]
    kernel32.QueryInformationJobObject.restype = ctypes.c_int
    information = BasicAccountingInformation()
    if not kernel32.QueryInformationJobObject(ctypes.c_void_p(job), 1, ctypes.byref(information), ctypes.sizeof(information), None):
        raise ctypes.WinError(ctypes.get_last_error())
    return int(information.ActiveProcesses)


def _terminate_windows_job(job: int) -> None:
    kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
    kernel32.TerminateJobObject.argtypes = [ctypes.c_void_p, ctypes.c_uint32]
    kernel32.TerminateJobObject.restype = ctypes.c_int
    if not kernel32.TerminateJobObject(ctypes.c_void_p(job), 1):
        raise ctypes.WinError(ctypes.get_last_error())


def _wait_for_windows_job_empty(job: int, timeout: float) -> int:
    deadline = time.monotonic() + timeout
    active = _windows_job_active_processes(job)
    while active > 0 and time.monotonic() < deadline:
        time.sleep(0.05)
        active = _windows_job_active_processes(job)
    return active


def _close_windows_handle(handle: int | None) -> None:
    if handle is None:
        return
    kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
    kernel32.CloseHandle.argtypes = [ctypes.c_void_p]
    kernel32.CloseHandle.restype = ctypes.c_int
    kernel32.CloseHandle(ctypes.c_void_p(handle))
