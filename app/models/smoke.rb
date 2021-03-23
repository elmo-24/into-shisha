class Smoke < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '喫煙可(紙タバコ・電子タバコ)'},
    { id: 3, name: '喫煙可(電子タバコのみ)'},
    { id: 4, name: '店内禁煙'},
    { id: 5, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :stores
end