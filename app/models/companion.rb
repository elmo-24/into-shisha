class Companion < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    {id: 2, name: '一人で'},
    {id: 3, name: '友人と'},
    {id: 4, name: '仕事関係の方と'},
    {id: 5, name: '家族と'},
    {id: 6, name: '初対面の方と'},
    {id: 7, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :reviews
end