class SessionsController < ApplicationController

    def create
		  user_info = request.env[omniauth.auth]
		  raise user_info 
		  # Your own session managment should be placed here
    end

    def destroy
    end

    def fail
    end

end
