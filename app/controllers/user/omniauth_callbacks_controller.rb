# frozen_string_literal: true

class User::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  def spotify
    # Default parameter
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, kind: "Spotify") if is_navigational_format?
    else
      # RSpotify stuff testing
      r_user = RSpotify::User.new(request.env["omniauth.auth"])
      r_top_artists = r_user.top_artists(limit: 5, time_range: "long_term")
      # CREATE CUSTOM HASHES
      custom_hash = Hash[
        "uid" => request.env["omniauth.auth"]["uid"],
        "provider" => request.env["omniauth.auth"]["provider"],
        "email" => request.env["omniauth.auth"]["info"]["email"],
        "name" => request.env["omniauth.auth"]["info"]["name"],
        "image" => request.env["omniauth.auth"]["info"]["image"],
        "artist0" => r_top_artists.at(0).name,
        "artist1" => r_top_artists.at(1).name,
        "artist2" => r_top_artists.at(2).name,
        "artist3" => r_top_artists.at(3).name,
        "artist4" => r_top_artists.at(4).name,
        "image0" => r_top_artists.at(0).images.at(0)["url"],
        "image1" => r_top_artists.at(1).images.at(0)["url"],
        "image2" => r_top_artists.at(2).images.at(0)["url"],
        "image3" => r_top_artists.at(3).images.at(0)["url"],
        "image4" => r_top_artists.at(4).images.at(0)["url"]
      ]
      # debug version to see what we pass
      puts "------HASH_VALUE--------\n\033[36;1m\n#{custom_hash.values}"
=begin
      puts "\033[36;1m"
      puts "\tuid => #{request.env["omniauth.auth"]["uid"]}"
      puts "\tprovider => #{request.env["omniauth.auth"]["provider"]}"
      puts "\temail => #{request.env["omniauth.auth"]["info"]["email"]}"
      puts "\tname => #{request.env["omniauth.auth"]["info"]["name"]}"
      puts "\timage => #{request.env["omniauth.auth"]["info"]["image"]}"
      puts "\tartist0 => #{r_top_artists.at(0).name}"
      puts "\tartist1 => #{r_top_artists.at(1).name}"
      puts "\tartist2 => #{r_top_artists.at(2).name}"
      puts "\tartist3 => #{r_top_artists.at(3).name}"
      puts "\tartist4 => #{r_top_artists.at(4).name}"
      puts "\timage0 => #{r_top_artists.at(0).images.at(0)["url"]}"
      puts "\timage1 => #{r_top_artists.at(1).images.at(0)["url"]}"
      puts "\timage2 => #{r_top_artists.at(2).images.at(0)["url"]}"
      puts "\timage3 => #{r_top_artists.at(3).images.at(0)["url"]}"
      puts "\timage4 => #{r_top_artists.at(4).images.at(0)["url"]}"
      puts "\033[0m"
=end
      session["ad_hoc.hash"] = custom_hash
      puts "----------SESSION-----------\n\033[35m#{session.values}\033[0m\n"
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
