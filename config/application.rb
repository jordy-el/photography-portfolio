require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module KrissiUikitRails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')

    config.cache_store = :memory_store, { size: 64.megabytes }

    config.paperclip_defaults = {
      storage: :s3,
      s3_protocol: 'https',
      s3_credentials: {
        bucket: Figaro.env.aws_bucket,
        access_key_id: Figaro.env.aws_access_key_id,
        secret_access_key: Figaro.env.aws_secret_access_key,
        s3_region: Figaro.env.aws_region,
        s3_host_name: Figaro.env.aws_endpoint
      }
    }

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
