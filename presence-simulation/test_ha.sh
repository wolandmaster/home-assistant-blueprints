#!/bin/bash

export TAG="presence-simulation"

test_ha_start() {
  docker build --file test/Dockerfile --tag ${TAG} $(pwd)
  docker run --detach --rm --publish 8123:8123 ${TAG}
}

test_ha_stop() {
  docker stop $(docker ps | awk "/${TAG}/ {print \$1}")
}

case "$1" in
  start)
    set -x
    test_ha_start
    ;;
  stop)
    set -x
    test_ha_stop
    ;;
  *)
    set -x
    test_ha_stop
    test_ha_start
    ;;
esac
