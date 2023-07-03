class SessionsController < ApplicationController
    def create
        #raise StandardError.new(ENV["omniauth.auth"])
        spotify_user = RSpotify::User.new(request.env['omniauth.auth']) 
    end

    def destroy
    end

    def fail
        raise StandardError.new(ENV["omniauth.auth"])
    end
end
