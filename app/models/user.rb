class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2, :line]

  with_options presence: true do
    validates :nickname
    validates :birth_date
    validates :password,format:{with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  end

  validates :profile, length: { maximum: 200 }

  has_many :sns_credentials
  has_many :reviews
  has_many :stores
  has_many :comments
  has_one_attached :image

  def self.from_omniauth(auth)
    sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
    user = User.where(email: auth.info.email).first_or_initialize(
      nickname: auth.info.name,
        email: auth.info.email
    )

    if user.persisted?
      sns.user = user
      sns.save
    end
    { user: user, sns: sns }
  end
end
