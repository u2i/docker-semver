FROM alpine AS base

ARG VERSION=v0.3.0
USER 1000

ADD --chown=1000:1000 https://github.com/frenck/semver/releases/download/$VERSION/semver_linux_amd64 /semver
RUN chmod +x /semver

FROM scratch

USER 1000
COPY --from=base /semver /semver

ENTRYPOINT [ "/semver" ]
