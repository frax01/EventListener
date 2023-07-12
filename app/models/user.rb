class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:spotify]
  
  def self.from_omniauth(auth)
    find_or_create_by(provider: auth.provider, uid: auth.uid) do |user|
      # user.password = Devise.friendly_token[0, 20]
      user.nome = auth.display_name   # assuming the user model has a nome
      user.email = auth.email
      user.uid = auth.id
      user.provider = "spotify"
      puts ""
      puts "called find_or_create"
      # user.image = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

  def self.new_with_session(params, session)
    puts ""
    puts "called new_with_session"
    super.tap do |user|
      if data = session["devise.spotify_data"] && session["devise.spotify_data"]["extra"]["raw_info"]
        puts ""
        puts "#{data}"
        user.uid = data["id"]
        user.provider = "spotify"
        user.nome = data["display_name"]
        user.email = data["email"] if user.email.blank?
        puts "#{user.uid} #{user.provider}"
      end
    end
  end
end
