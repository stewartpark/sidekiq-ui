require 'sidekiq'

Sidekiq.configure_client do |config|
    config.redis = { :size => 1 }
end

require 'sidekiq/web'
require 'sidekiq/prometheus/exporter'
Sidekiq::Web.register(Sidekiq::Prometheus::Exporter)
run Sidekiq::Web
