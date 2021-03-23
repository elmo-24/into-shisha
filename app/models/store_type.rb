class StoreType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'シーシャ専門店'},
    { id: 3, name: 'シーシャバー'},
    { id: 4, name: '飲食メイン'},
    { id: 5, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :stores
end