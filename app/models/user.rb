class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    validates :birth_date
    validates :password,format:{with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  end

  has_many :reviews
  has_many :stores
  has_many :comments
end
