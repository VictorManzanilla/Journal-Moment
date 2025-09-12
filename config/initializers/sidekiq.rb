require "sidekiq"
require "sidekiq-scheduler"

Sidekiq.configure_server do |config|
  config.redis = { url: ENV.fetch("REDIS_URL", "redis://127.0.0.1:6379/0") }

  schedule_file = "config/sidekiq.yml"
  if File.exist?(schedule_file)
    Sidekiq::Scheduler.dynamic = true
    Sidekiq.schedule = YAML.load_file(schedule_file)[:schedule]
    Sidekiq::Scheduler.reload_schedule!
  end
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch("REDIS_URL", "redis://127.0.0.1:6379/0") }
end
