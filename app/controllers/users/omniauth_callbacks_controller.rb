class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
	protect_from_forgery with: :null_session	# required to avoid CSFR problem
	skip_before_action :verify_authenticity_token, only: :create
	
    def spotify
        # You need to implement the method below in your model (e.g. app/models/user.rb)
        @user = User.from_omniauth(request.env["omniauth.auth"])
        if @user.persisted?
            sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
            set_flash_message(:notice, :success, kind: "Spotify") if is_navigational_format?
        else
            session["devise.spotify_data"] = request.env["omniauth.auth"].expect(:extra)
            redirect_to new_user_registration_url
        end
    end
    
    def failure
        redirect_to root_path
    end

	private
	def auth
		@auth ||= request.env['omniauth.auth']
	end
end