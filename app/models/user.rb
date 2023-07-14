class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:spotify]

  def self.sign_up_params
    params.require(:user).permit(:name, :provider, :uid, :image, :email, :password, :password_confirmation)
  end

  validate :password_complexity
  private

  def password_complexity
    return if password.blank?

    unless password.match?(/(?=.*[A-Z])(?=.*\d)(?=.*[[:^alnum:]])/)
      errors.add(:password, "deve contenere almeno una lettera maiuscola, un numero e un carattere speciale")
    end
  end

  def self.from_omniauth(auth)
    puts "\033[43;30mfind_or_create\033[0m"
    find_or_create_by(provider: auth.provider, uid: auth.uid) do |user|
      user.provider = auth.provider
      user.email = auth.email
      user.name = auth.info.name
      user.uid = auth.uid
      user.image = auth.info.image
      user.is_artist = (auth.info.type=="artist")
    end
  end

  def self.new_with_session(params, session)
    puts "\033[43;30mnew_with_session\033[0m"
    super.tap do |user|
      if data = session["devise.spotify_data"] #&& session["devise.spotify_data"]["raw_info"]#["extra"]  #this is strictly removed by caller function
        puts "\033[31m#{data}\033[0m"
        puts "#{data["info"]}"
        user.email = data["info"]["email"] if user.email.blank?
        user.uid = data["uid"]
        user.provider = data["provider"]
        user.name = data["info"]["name"]
        user.image = data["info"]["image"]
        puts "\033[35m#{user.uid} #{user.provider} #{user.email} #{user.name}\033[0m"
        # RSpotify stuff testing
        if r_data = session["rspotify.top_artist"]
          puts "\033[35m ENTRY RSPOTIFY SECTION!\033[0m"
          puts "\n#{r_data}\n"
          # lazy implementation, array not avaible on sql lite
          @user.artist0 = r_data.at(0).name
          @user.artist1 = r_data.at(1).name
          @user.artist2 = r_data.at(2).name
          @user.artist3 = r_data.at(3).name
          @user.artist4 = r_data.at(4).name
          @user.image0 = r_data.at(0).images.at(0)['url']
          @user.image1 = r_data.at(1).images.at(0)['url']
          @user.image2 = r_data.at(2).images.at(0)['url']
          @user.image3 = r_data.at(3).images.at(0)['url']
          @user.image4 = r_data.at(4).images.at(0)['url']
        end
      end
    end
  end
end
