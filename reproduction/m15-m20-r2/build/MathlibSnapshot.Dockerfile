ARG MATHCASE_GIT_IMAGE=mathcase/lean-sandbox:4.33.1
ARG MATHCASE_BASE_IMAGE=mathcase/lean-sandbox:4.33.1
FROM ${MATHCASE_GIT_IMAGE} AS git-tools

FROM ${MATHCASE_BASE_IMAGE} AS lean-runtime

ARG MATHCASE_BASE_IMAGE
ARG MATHCASE_BUILD_TARGET=MathCaseFirstRung
ARG MATHCASE_BASE_IMAGE
ARG MATHCASE_INVENTORY_BINARY=builder/lean_snapshot_inventory

USER root
COPY --from=git-tools /usr/bin/git /usr/bin/git
COPY --from=git-tools /lib/x86_64-linux-gnu/libpcre2-8.so.0* /lib/x86_64-linux-gnu/
COPY --from=git-tools /lib/x86_64-linux-gnu/libz.so.1* /lib/x86_64-linux-gnu/
COPY ${MATHCASE_INVENTORY_BINARY} /usr/local/bin/lean-snapshot-inventory
COPY project/ /mathcase/project/

RUN git --version \
    && mkdir -p /mathcase \
    && /usr/local/bin/lean-snapshot-inventory \
        --root /mathcase/project \
        --summary /mathcase/pre-build-summary.json \
        --require-no-compiled

WORKDIR /mathcase/project

# Lean targets do not need ProofWidgets' optional JavaScript assets. Keep the
# clean image build offline by removing only those npm edges before Lake runs.
RUN sed -i '/needs := #\[widgetJsAll\]/d' .lake/packages/proofwidgets/lakefile.lean \
    && git config --global core.autocrlf true \
    && lake build "${MATHCASE_BUILD_TARGET}"

RUN /usr/local/bin/lean-snapshot-inventory \
    --root /mathcase/project \
    --inventory /mathcase/snapshot-inventory.jsonl \
    --summary /mathcase/snapshot-summary.json
