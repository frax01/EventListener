# frozen_string_literal: true

class User::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  def spotify
    # Default parameter
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
        # RSpotify stuff testing
        r_user = RSpotify::User.new(request.env["omniauth.auth"])
        r_top_artists = r_user.top_artists(limit: 5, time_range: "long_term")
        # lazy implementation, array not avaible on sql lite
        @user.artist0 = r_top_artists.at(0).name
        @user.artist1 = r_top_artists.at(1).name
        @user.artist2 = r_top_artists.at(2).name
        @user.artist3 = r_top_artists.at(3).name
        @user.artist4 = r_top_artists.at(4).name
        @user.image0 = r_top_artists.at(0).images.at(0)['url']
        @user.image1 = r_top_artists.at(1).images.at(0)['url']
        @user.image2 = r_top_artists.at(2).images.at(0)['url']
        @user.image3 = r_top_artists.at(3).images.at(0)['url']
        @user.image4 = r_top_artists.at(4).images.at(0)['url']
        sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
        set_flash_message(:notice, :success, kind: "Spotify") if is_navigational_format?
    else
        # RSpotify stuff testing
        r_user = RSpotify::User.new(request.env["omniauth.auth"])
        r_top_artists = r_user.top_artists(limit: 5, time_range: "long_term")
        session["devise.spotify_data"] = request.env["omniauth.auth"]#.expect(:extra)
        session["rspotify.top_artist"] = r_top_artists
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
