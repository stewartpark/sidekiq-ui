#!/usr/bin/env bash

docker push "stewartpark/sidekiq-ui:v$SIDEKIQ_VERSION"

if [ -n "$TAG_LATEST" ]; then
    docker tag "stewartpark/sidekiq-ui:v$SIDEKIQ_VERSION" stewartpark/sidekiq-ui:latest
    docker push stewartpark/sidekiq-ui:latest
fi
