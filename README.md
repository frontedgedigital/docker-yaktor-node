[![yaktor image](yaktor.png)](http://yaktor.io)


# Docker Base Image

* Provides a base docker image for [yaktor/yaktor](https://hub.docker.com/r/yaktor/yaktor)
* Validates [yaktor](https://github.com/SciSpike/yaktor) via `./run.sh npm test` 

## TL;DR

Don't use images from this repo directly.
Use https://hub.docker.com/r/yaktor/yaktor instead.

## Long Story

This repo houses images that contain all Yaktor dependencies.  These base
images make it possible for developers of Yaktor itself to create Yaktor
containers for local testing.
