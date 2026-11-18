# syntax=docker/dockerfile:1.7
FROM ubuntu@sha256:68ee22004a9109b44973313b02ff7b1de250f1de0f5ecb628d73f579aaff33ac

RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates git zstd \
    && rm -rf /var/lib/apt/lists/*

ADD --checksum=sha256:890afd185370f85666025b883914ab4f4b339136f8c96167b69cfb62aecaf235 \
    https://github.com/leanprover/lean4/releases/download/v4.33.1/lean-4.33.1-linux.tar.zst \
    /tmp/lean.tar.zst

RUN mkdir -p /opt/lean \
    && tar --use-compress-program=unzstd -xf /tmp/lean.tar.zst -C /opt/lean --strip-components=1 \
    && rm /tmp/lean.tar.zst

ENV PATH="/opt/lean/bin:${PATH}" \
    LEAN_SYSROOT=/opt/lean \
    HOME=/tmp

WORKDIR /mathcase/project
USER 65532:65532
ENTRYPOINT ["lake"]
