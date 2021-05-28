class ProductCategory < ActiveHash::Base
  self.data = [
    {id:1, name: '---'},
    {id:2, name: '前菜'},
    {id:3, name: 'アラカルト'},
    {id:4, name: 'パスタ'},
    {id:5, name: 'メインディッシュ'},
    {id:6, name: 'デザート'}
  ]

  include ActiveHash::Associations
  has_many :menus
end