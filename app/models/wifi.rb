class Wifi < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'フリーwifiあり'},
    { id: 3, name: 'フリーwifiなし'},
    { id: 4, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :stores
end