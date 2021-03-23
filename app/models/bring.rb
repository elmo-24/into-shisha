class Bring < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '持ち込み可(フード、アルコール、ソフトドリンク全て)'}, 
    { id: 3, name: '持ち込み可(フードのみ)'}, 
    { id: 4, name: '持ち込み可(フード・ソフトドリンクのみ)'},
    { id: 5, name: '持ち込み可(ソフトドリンクのみ)'},
    { id: 6, name: '持ち込み完全不可'},
    { id: 7, name: 'その他'}   
  ]

  include ActiveHash::Associations
  has_many :stores
end