class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :companion
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many_attached :images
  belongs_to :store

  with_options presence: true do
    validates :visit_date
    validates :message
    validates :flavor
    validates :price, format: { with: /\A[0-9]+\z/ }
    validates :images
  end

  validates :companion_id, numericality: { other_than: 1 }
  
end
