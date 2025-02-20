#!/usr/bin/env bash

docker build \
    --build-arg "SIDEKIQ_VERSION=$SIDEKIQ_VERSION" \
    --build-arg "PUMA_VERSION=$PUMA_VERSION" \
    --build-arg "SIDEKIQ_PROMETHEUS_EXPORTER_VERSION=0.1.12" \
    --build-arg "REDIS_NAMESPACE_VERSION=1.7.0" \
    --tag "stewartpark/sidekiq-ui:v$SIDEKIQ_VERSION" \
    .
