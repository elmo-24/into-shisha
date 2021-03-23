class Alcohol < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '店内注文できる'},
    { id: 3, name: '持ち込みのみ可'},
    { id: 4, name: '店内アルコール禁止'},
    { id: 5, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :stores
end