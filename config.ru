require 'sidekiq'

Sidekiq.configure_client do |config|
  if ENV['REDIS_CLUSTER_URLS'].nil?
    config.redis = { size: 1 }
  else
    config.redis = {
      cluster: ENV['REDIS_CLUSTER_URLS'].split(','),
      namespace: "{#{ENV.fetch('REDIS_CLUSTER_KEY')}}"
    }
  end
end

require 'sidekiq/web'
require 'sidekiq/prometheus/exporter'
Sidekiq::Web.register(Sidekiq::Prometheus::Exporter)
run Sidekiq::Web
