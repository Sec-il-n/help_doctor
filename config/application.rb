require_relative 'boot'
# Rails自体が読み込まれる前に何らかのコードを実行する場合　↑　これ以前に記載
require 'rails/all'

Bundler.require(*Rails.groups)

module HelpDoctor
  class Application < Rails::Application
    config.load_defaults 5.2
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local

    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework :rspec,
            view_specs: false,
            helper_specs: false,
            routing_specs: false,
            controller_specs: false,
            request_specs: false
    end
  end
end
