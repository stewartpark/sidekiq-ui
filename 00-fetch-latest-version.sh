#!/usr/bin/env bash
export SIDEKIQ_VERSION
export PUMA_VERSION

SIDEKIQ_VERSION=$(gem search ^sidekiq$ | grep sidekiq | sed -n 's/sidekiq (\([^ )]*\).*/\1/p')
PUMA_VERSION=$(gem search ^puma$ | grep puma | sed -n 's/puma (\([^ )]*\).*/\1/p')

echo "Sidekiq version: $SIDEKIQ_VERSION"
echo "Puma version: $PUMA_VERSION"
