"""A deterministic, fail-closed model routing foundation.

Adapters are injected by the caller. This module does not import a provider SDK,
make network requests, select a model implicitly, or fall back to a paid service.
"""

from __future__ import annotations

from dataclasses import dataclass
from decimal import Decimal
from enum import StrEnum
from typing import Callable, Mapping


class Task(StrEnum):
    """A task category that a routing policy can handle explicitly."""

    PROOF_SUGGESTION = "proof_suggestion"
    EXPOSITION = "exposition"
    TASTE_SCORING = "taste_scoring"


class RouteError(RuntimeError):
    """Base class for a refused or unavailable model route."""


class RouteUnavailable(RouteError):
    """Raised when no explicit, capable provider is configured for a task."""


class RoutePolicyViolation(RouteError):
    """Raised when a provider violates the configured privacy or cost policy."""


@dataclass(frozen=True)
class Provider:
    """An adapter declaration with a per-call hard cost ceiling."""

    provider_id: str
    capabilities: frozenset[Task]
    max_cost_usd: Decimal | None
    uses_network: bool
    generate: Callable[[str], str]


@dataclass(frozen=True)
class ModelRoutePolicy:
    """Explicit task-to-provider mapping and per-call spend/privacy boundary."""

    routes: Mapping[Task, str]
    max_cost_usd: Decimal = Decimal("0")
    allow_network: bool = False


@dataclass(frozen=True)
class ModelResponse:
    provider_id: str
    text: str


class DeterministicModelRouter:
    """Dispatch only to the provider named for the task, with no fallback."""

    def __init__(
        self,
        providers: Mapping[str, Provider],
        policy: ModelRoutePolicy,
    ) -> None:
        if (
            not isinstance(policy.max_cost_usd, Decimal)
            or not policy.max_cost_usd.is_finite()
            or policy.max_cost_usd < 0
        ):
            raise ValueError("max_cost_usd must be a finite, nonnegative Decimal")
        self._providers = dict(providers)
        self._routes = dict(policy.routes)
        self._max_cost_usd = policy.max_cost_usd
        self._allow_network = policy.allow_network
        for provider_id, provider in self._providers.items():
            if (
                not isinstance(provider, Provider)
                or not provider_id
                or provider_id != provider.provider_id
                or not callable(provider.generate)
            ):
                raise ValueError("registered provider identity and generator must be valid")
            if provider.max_cost_usd is not None and (
                not isinstance(provider.max_cost_usd, Decimal)
                or not provider.max_cost_usd.is_finite()
                or provider.max_cost_usd < 0
            ):
                raise ValueError("provider cost must be a finite, nonnegative Decimal or None")
            if not isinstance(provider.uses_network, bool) or not all(
                isinstance(task, Task) for task in provider.capabilities
            ):
                raise ValueError("provider capabilities and network flag are invalid")
        for task, provider_id in self._routes.items():
            if not isinstance(task, Task) or not isinstance(provider_id, str) or not provider_id:
                raise ValueError("routes must map known tasks to nonempty provider IDs")

    def route(self, task: Task, prompt: str) -> ModelResponse:
        if not isinstance(task, Task):
            raise RouteUnavailable("unknown task type")
        if not isinstance(prompt, str):
            raise TypeError("prompt must be text")
        provider_id = self._routes.get(task)
        if provider_id is None:
            raise RouteUnavailable(f"no provider is configured for task {task.value!r}")

        provider = self._providers.get(provider_id)
        if provider is None:
            raise RouteUnavailable(f"configured provider {provider_id!r} is not registered")
        if task not in provider.capabilities:
            raise RouteUnavailable(
                f"provider {provider_id!r} does not support task {task.value!r}"
            )
        if provider.uses_network and not self._allow_network:
            raise RoutePolicyViolation(
                f"provider {provider_id!r} uses a network route, which policy forbids"
            )
        if provider.max_cost_usd is None:
            raise RoutePolicyViolation(
                f"provider {provider_id!r} has no hard per-call cost ceiling"
            )
        if provider.max_cost_usd > self._max_cost_usd:
            raise RoutePolicyViolation(
                f"provider {provider_id!r} exceeds the configured cost ceiling"
            )

        response_text = provider.generate(prompt)
        if not isinstance(response_text, str):
            raise RoutePolicyViolation("provider returned a non-text response")
        return ModelResponse(provider.provider_id, response_text)
