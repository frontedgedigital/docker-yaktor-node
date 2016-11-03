[![Yaktor](http://docs.yaktor.io/images/logo-with-text.png)](http://yaktor.io)

# Yaktor Docker Node.js Image

Provides a Docker image for [Yaktor](https://yaktor.io) applications built using [Node.js](http://nodejs.org).

## tl;dr

```
$ mkdir myapp && cd myapp
$ docker run -it --rm --user node \
  -v "$PWD":/app --entrypoint bash \
  yaktor/node:latest -c \
  'npm install yaktor && $(npm bin)/yaktor init'
$ ./yak gen-src gen-views start
```

## About

This repo houses images that contain all Yaktor dependencies, enabling developers to create & run a new Yaktor application or onboard themselves to an existing Yaktor application quickly.

See http://yaktor.io [for](http://docs.yaktor.io) [more](http://docs.yaktor.io/reference/index.html#tl-dr-using-node-js) [information](http://docs.yaktor.io/reference/index.html#introducing-yaktor).
