class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:spotify]
  
  attr_accessor :nome, :cognome, :data_di_nascita    
  
  def self.sign_up_params
    params.require(:user).permit(:nome, :cognome, :data_di_nascita, :email, :password, :password_confirmation)
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
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end
  
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.spotify_data"] && session["devise.spotify_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
end
