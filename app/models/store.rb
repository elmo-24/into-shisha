class Store < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :store_type
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :vibe
  belongs_to_active_hash :bring
  belongs_to_active_hash :concent
  belongs_to_active_hash :alcohol
  belongs_to_active_hash :smoke
  belongs_to_active_hash :flavor_sale
  belongs_to_active_hash :wifi
  belongs_to_active_hash :card

  belongs_to :user
  has_many :reviews, dependent: :destroy

  with_options presence: true do
    validates :store_name
    validates :postal_code
    validates :city
    validates :house_number
    validates :phone_number
    validates :access
  end

  validates :prefecture_id, numericality: { other_than: 1 }
end
