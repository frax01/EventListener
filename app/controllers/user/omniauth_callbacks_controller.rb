# frozen_string_literal: true

class User::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  def spotify
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
        sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
        set_flash_message(:notice, :success, kind: "Spotify") if is_navigational_format?
    else
        #@utente=RSpotify::User.new(request.env["omniauth.auth"])
        puts "-----sono qui----+++++"
        #puts "utente: #{@utente}"
        session["devise.spotify_data"] = request.env["omniauth.auth"]#.expect(:extra)
        puts "\033[35m#{session["devise.spotify_data"]}\033[0m"
        redirect_to new_user_registration_url
    end
  end

  # More info at:
  # https://github.com/heartcombo/devise#omniauth

  # GET|POST /resource/auth/twitter
  def passthru
    super
  end

  # GET|POST /users/auth/twitter/callback
  def failure
    super
  end

  protected

  # The path used when OmniAuth fails
  def after_omniauth_failure_path_for(scope)
    super(scope)
  end

  private
	def auth
		@auth ||= request.env['omniauth.auth']
	end
  
end
