require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module ReservationSystem
  class Application < Rails::Application
    config.load_defaults 7.0

    config.encoding = 'utf-8'

    config.time_zone = "Tokyo"
  end
end
