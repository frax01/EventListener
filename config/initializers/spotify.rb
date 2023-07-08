# old stuff, leave here untill next choise, avoid trouble
=begin
require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, ENV["SPOTIFY_ID"], ENV["SPOTIFY_SECRET"] # by default safe :)
end

OmniAuth.config.allowed_request_methods = [:post, :get]
=end
Rails.application.config.middleware.use OmniAuth::Builder do
    provider :spotify, ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_CLIENT_SECRET'],
      scope: 'user-read-email user-library-read',
      show_dialog: true,
      client_options: {
        authorize_url: 'https://accounts.spotify.com/authorize'
      }
  end
