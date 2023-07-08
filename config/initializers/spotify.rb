require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, ENV["SPOTIFY_ID"], ENV["SPOTIFY_SECRET"] # by default safe :)
end

OmniAuth.config.allowed_request_methods = [:post, :get]