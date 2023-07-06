class SessionsController < ApplicationController
    def create
		user_info = request.env[omniauth.auth]
		raise user_info 
		# Your own session managment should be placed here
    end

    def destroy
    end

    def fail
        raise StandardError.new(ENV["omniauth.auth"])
    end
	def new
		render :new
	end

end
