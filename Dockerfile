FROM ruby:2.6
ARG SIDEKIQ_VERSION
ARG PUMA_VERSION
ARG SIDEKIQ_PROMETHEUS_EXPORTER_VERSION
RUN gem install sidekiq -v "${SIDEKIQ_VERSION}" && \
    gem install puma -v "${PUMA_VERSION}" && \
    gem install sidekiq-prometheus-exporter -v "${SIDEKIQ_PROMETHEUS_EXPORTER_VERSION}" && \
    gem install redis-namespace -v "${REDIS_NAMESPACE_VERSION}" && \
    useradd -ms /bin/sh sidekiq
USER sidekiq
EXPOSE 9292
HEALTHCHECK CMD curl --fail http://localhost:9292/ || exit 1
WORKDIR /app
COPY config.ru /app
ENTRYPOINT ["puma"]
