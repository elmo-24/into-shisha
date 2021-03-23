class Vibe < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '中東系'},
    { id: 3, name: 'アメリカン系'},
    { id: 4, name: '和風'},
    { id: 5, name: 'アジアン系'},
    { id: 6, name: 'ヨーロッパ系'},
    { id: 7, name: 'モダン系'},
    { id: 8, name: 'ポップ系'},
    { id: 9, name: 'ジャンク系'},
    { id: 10, name: 'ヴィンテージ系'},
    { id: 11, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :stores
end