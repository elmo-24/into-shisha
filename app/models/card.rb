class Card < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '使用可能'}, 
    { id: 3, name: 'キャッシュのみ'}, 
    { id: 4, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :stores
end