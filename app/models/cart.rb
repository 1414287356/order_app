class Cart < ApplicationRecord
  belongs_to :user
  has_many :menu, through: :cart_menus
  has_many :cart_menus, dependent: :destroy
end
