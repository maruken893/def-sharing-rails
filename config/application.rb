require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    config.time_zone = "Tokyo"

    config.generators do |g|
      g.assets false
      g.skip_routes true
      g.helper false
      g.test_framework :test_unit, fixture: false
    end

    # formでエラーが出たとき、field_of_errorsクラスのdivが勝手に入る設定を切る
    config.action_view.field_error_proc = Proc.new { |html_tag, instance| html_tag }
  end
end
