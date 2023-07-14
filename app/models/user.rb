class User < ApplicationRecord
  has_many :events
  has_many :radunos

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
    puts "---PARAMS\n#{params}\n"
    super.tap do |user|
      if data = session["ad_hoc.hash"]
        puts "\033[4;34m#{data.to_hash}\033[0m"
        user.uid = data['uid']
        user.provider = data["provider"]
        user.email = data["email"]
        user.name = data["name"]
        user.image = data["image"]
        user.artist0 = data["artist0"]
        user.artist1 = data["artist1"]
        user.artist2 = data["artist2"]
        user.artist3 = data["artist3"]
        user.artist4 = data["artist4"]
        user.image0 = data["image0"]
        user.image1 = data["image1"]
        user.image2 = data["image2"]
        user.image3 = data["image3"]
        user.image4 = data["image4"]
      end
    end
  end
end
