class Menu < ApplicationRecord

  with_options presence: true do
    validates :product_name
    validates :product_description
    validates :product_category_id
    validates :price
  end

  validates :product_category_id, numericality: { other_than: 1, message: 'is invalid.'}

  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :product_category
end
