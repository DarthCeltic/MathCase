"""Run the primary exhaustive screen followed by its direct-pair audit."""
import subprocess
import sys
from pathlib import Path

here = Path(__file__).resolve().parent
for script in ("screen.py", "check_exact.py"):
    subprocess.run([sys.executable, "-B", str(here / script)], cwd=here, check=True)
