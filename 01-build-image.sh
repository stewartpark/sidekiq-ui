#!/usr/bin/env bash

docker build \
    --build-arg "SIDEKIQ_VERSION=$SIDEKIQ_VERSION" \
    --build-arg "PUMA_VERSION=$PUMA_VERSION" \
    --tag "stewartpark/sidekiq-ui:v$SIDEKIQ_VERSION" \
    .
