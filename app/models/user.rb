class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  with_options presence: true do
    validates :nickname
    validates :password
    validates :password_confirmation
  end

  validates :password, length: { minimum: 6 }
  validates :password, confirmation: true

  has_many :menus
  has_one :cart, dependent: :destroy
end
