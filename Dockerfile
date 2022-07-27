FROM scratch

ARG VERSION=v0.3.0
USER 1000

ADD --chmod=1000:1000 https://github.com/frenck/semver/releases/download/$VERSION/semver_linux_amd64 /semver

ENTRYPOINT [ "/semver" ]
