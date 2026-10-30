"""Small cross-process file locks for local MathCase stores and runtimes."""

from __future__ import annotations

import os
import time
from contextlib import contextmanager
from pathlib import Path
from typing import Iterator


@contextmanager
def exclusive_file_lock(path: Path, *, timeout_seconds: float | None = None) -> Iterator[None]:
    """Hold an exclusive OS lock on ``path`` for the duration of the context.

    The lock file is intentionally persistent; the operating-system lock, not
    file existence, determines whether another process currently owns it.
    ``timeout_seconds=0`` is a non-blocking acquisition.
    """

    path.parent.mkdir(parents=True, exist_ok=True)
    if path.is_symlink() or any(parent.is_symlink() for parent in path.parents if parent.exists()):
        raise ValueError("lock path crosses a symbolic link")

    with path.open("a+b") as handle:
        handle.seek(0, os.SEEK_END)
        if handle.tell() == 0:
            handle.write(b"\0")
            handle.flush()
        handle.seek(0)
        started = time.monotonic()
        acquired = False
        while not acquired:
            try:
                if os.name == "nt":
                    import msvcrt

                    msvcrt.locking(handle.fileno(), msvcrt.LK_NBLCK, 1)
                else:
                    import fcntl

                    fcntl.flock(handle.fileno(), fcntl.LOCK_EX | fcntl.LOCK_NB)
                acquired = True
            except OSError:
                if timeout_seconds is None:
                    time.sleep(0.05)
                    continue
                if time.monotonic() - started >= timeout_seconds:
                    raise TimeoutError(f"another process holds the local lock: {path.name}")
                time.sleep(min(0.05, max(0.0, timeout_seconds - (time.monotonic() - started))))

        try:
            yield
        finally:
            handle.seek(0)
            if os.name == "nt":
                import msvcrt

                msvcrt.locking(handle.fileno(), msvcrt.LK_UNLCK, 1)
            else:
                import fcntl

                fcntl.flock(handle.fileno(), fcntl.LOCK_UN)
