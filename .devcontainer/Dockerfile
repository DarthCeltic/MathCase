FROM mcr.microsoft.com/devcontainers/go:2-1.27-bookworm@sha256:57d71ff964ee9ece1e8158b7379a5a0922f9a709a5aa2109115f7546be430bd7

USER root
RUN apt-get update && apt-get install -y --no-install-recommends python3 zstd && rm -rf /var/lib/apt/lists/*

USER vscode
ENV PATH="/home/vscode/.elan/bin:${PATH}"
RUN set -eu; \
    case "$(uname -m)" in \
      x86_64) sha=0e8250aa2be86c7af929ade68db617af9edc8b9ccf6eaf5ece228250d0d032e2 ;; \
      aarch64) sha=45cde3006f82f98804c94cf2ca4949d117060a5f3cc8afa62f523759947ee21f ;; \
      *) exit 1 ;; \
    esac; \
    cd "$(mktemp -d)"; \
    curl --fail --location --retry 3 -o elan.tar.gz "https://github.com/leanprover/elan/releases/download/v4.4.0/elan-$(uname -m)-unknown-linux-gnu.tar.gz"; \
    echo "$sha  elan.tar.gz" | sha256sum -c -; \
    tar -xzf elan.tar.gz; \
    ./elan-init -y --default-toolchain none --no-modify-path; \
    rm elan.tar.gz elan-init
