FROM rjarow/alpine64-caddy-s6
LABEL maintainer "Rich J github.com/rjarow" architecture="AMD64/x86_64"

ENV HUGO_VERSION=0.20.2

WORKDIR /tmp
RUN https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz /
    && tar xzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz /
    && mv hugo_${HUGO_VERSION}_linux_amd64/hugo_${HUGO_VERSION}_linux_amd64 /usr/bin/hugo /
    && chmod +x /usr/bin/hugo /
    && rm -rf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz  hugo_${HUGO_VERSION}_linux_amd64