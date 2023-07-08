require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EventListener
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

	# based on this article: https://itnext.io/environment-variables-in-ruby-on-rails-17e4934cfd71
	config.before_configuration do
		env_file = File.join(Rails.root, 'config', 'local_env.yml')
		YAML.load(File.open(env_file)).each do |key, value|
			ENV[key.to_s] = value
		end if File.exists?(env_file)
	end

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    # config/application.rb
  end
end

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :spotify, ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_CLIENT_SECRET']
=begin
	# Support both GET and POST for callbacks
	%w(get post).each do |method|
		send(method, "/auth/:provider/callback") do
			env['omniauth.auth'] # => OmniAuth::AuthHash
		end
	end
=end
end
