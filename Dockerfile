FROM docker.io/library/alpine:3

LABEL \
    com.docker.image.license="MIT" \
    com.docker.image.author.name="Kamaran Layne" \
    com.docker.image.author.email="kamaranl@kamaranl.vip" \
    com.docker.image.author.url="https://github.com/KamaranL" \
    com.1password-cli.version="2.29.0"

RUN <<EOF
echo https://downloads.1password.com/linux/alpinelinux/stable/ >> /etc/apk/repositories
wget https://downloads.1password.com/linux/keys/alpinelinux/support@1password.com-61ddfc31.rsa.pub -P /etc/apk/keys
apk update --no-cache
apk add --no-cache 1password-cli
EOF

VOLUME [ "/root" ]

ENTRYPOINT [ "/usr/bin/op" ]
