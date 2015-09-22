FROM gliderlabs/alpine:3.2
RUN apk-install openssl bash curl \
    && wget https://github.com/progrium/gh-release/releases/download/v2.2.0/gh-release_2.2.0_linux_x86_64.tgz -O- \
       | tar xz -C /usr/local/bin
ENTRYPOINT ["/usr/local/bin/gh-release"]
