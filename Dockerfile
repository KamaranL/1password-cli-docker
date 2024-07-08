FROM docker.io/library/alpine:3

LABEL \
    org.label-schema.schema-version="1.0" \
    org.label-schema.1password-cli.version="2.29.0" \
    org.label-schema.description="1Password CLI built on alpine linux" \
    org.label-schema.license="MIT" \
    org.label-schema.maintainer="Kamaran Layne <kamaranl@kamaranl.vip>" \
    org.label-schema.vcs-url="https://github.com/KamaranL" \
    org.label-schema.vendor="kamaranl"

RUN <<EOF
echo https://downloads.1password.com/linux/alpinelinux/stable/ >> /etc/apk/repositories
wget https://downloads.1password.com/linux/keys/alpinelinux/support@1password.com-61ddfc31.rsa.pub -P /etc/apk/keys
apk update --no-cache
apk add --no-cache 1password-cli
EOF

VOLUME [ "/root" ]

ENTRYPOINT [ "/usr/bin/op" ]
