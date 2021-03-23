class FlavorSale < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '店内で販売している'},
    { id: 3, name: '店内販売なし'},
    { id: 4, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :stores
end