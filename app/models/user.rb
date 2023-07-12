class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:spotify]

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
    find_or_create_by(provider: auth.provider, uid: auth.uid) do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.nome = auth.info.nome   # assuming the user model has a nome
      # user.image = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end
end
