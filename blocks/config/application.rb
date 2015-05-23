require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blocks
  class Application < Rails::Application

    config.react.variant = :production
    config.react.addons = true

    config.ios_app_id = "REPLACE"
    config.ios_app_url = "http://itunes.apple.com/us/app/id#{config.ios_app_id}?mt=8"
    config.name = "Your App"
    config.title = "Your Title"
    config.description = "created using YOUR APP | Download for Free!"
    config.twitter_publisher = "@YOURSITE"
    config.facebook_app_id = "REPLACE"
    config.cloudfront_baseurl = ""
  
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
  end
end
