FROM alpine:3.9 as Base

MAINTAINER docker@scispike.com


RUN \
  set -x \
  && \
  apk add --no-cache \
    bash \
    g++ \
    git \
    make \
    nodejs-lts \
    python \
    sudo \
    sed

RUN adduser -D -u 1000 node
RUN echo "node ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER node
RUN echo 'export PATH="./node_modules/.bin:$PATH"' >> ~/.profile

USER root
RUN echo 'export PATH="./node_modules/.bin:$PATH"' >> ~/.profile

VOLUME ["/app"]
WORKDIR /app
COPY yaktor.sh /yaktor.sh

FROM Base

# NOTE: The image created by this Dockerfile only adds packages that are
# required for yaktor to run properly.  It does NOT install yaktor itself.

MAINTAINER yaktor@scispike.com

RUN \
  set -x \
  && \
  apk add --no-cache \
    openjdk7-jre-base \
    ruby-dev\
    ruby \
    ghostscript-fonts \
    graphviz \
    zeromq-dev

RUN \
  /usr/bin/gem install -N \
    asciidoctor-diagram \
    json

VOLUME ["/app"]
WORKDIR /app

COPY --from=Base yaktor.sh /yaktor.sh
ENTRYPOINT ["/yaktor.sh"]
