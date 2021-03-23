class Concent < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'コンセント利用可'},
    { id: 3, name: 'コンセント利用不可'},
    { id: 4, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :stores
end