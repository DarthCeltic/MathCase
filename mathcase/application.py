"""Application composition for MathCase's local Python surfaces.

The app owns one optional model-routing boundary and the fixed read models
used by the MCP adapter. Model routing is not exposed as an MCP tool.
"""

from __future__ import annotations

from mathcase.connect import projection
from mathcase.router import (
    DeterministicModelRouter,
    ModelResponse,
    RouteUnavailable,
    Task,
)


class MathCaseApplication:
    """Compose fixed read models with an optional, explicitly configured router.

    The default composition has no model route. Callers that inject a router
    still receive only its raw proposal; proof verification and complete
    five-tier exposition acceptance remain in their separate Go workflows.
    """

    def __init__(self, model_router: DeterministicModelRouter | None = None) -> None:
        self._model_router = model_router

    def route_model_task(self, task: Task, prompt: str) -> ModelResponse:
        """Route one explicit task through the configured policy, without fallback."""
        if self._model_router is None:
            raise RouteUnavailable("model routing is not configured in this application")
        if not isinstance(prompt, str):
            raise TypeError("prompt must be text")
        if not prompt.strip():
            raise ValueError("prompt must not be empty")
        return self._model_router.route(task, prompt)

    def overview(self) -> dict[str, object]:
        return projection.envelope(
            projection.overview(), sources=["MathCase connector contract"]
        )

    def r0b_receipt(self) -> dict[str, object]:
        return projection.envelope(
            projection.r0b_receipt(),
            sources=["proofs/r0b/verification_receipt_r0b_passed.json"],
        )

    def system_map(self) -> dict[str, object]:
        return projection.envelope(
            projection.system_map(),
            sources=["docs/MATHCASE_SYSTEM_MAP.md"],
            untrusted=["markdown"],
        )
