class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string  :product_name,         null: false
      t.text    :product_description,  null: false
      t.integer :product_category_id,  null: false
      t.integer :price,                null: false
      t.references  :user,              foreign_key: true

      t.timestamps
    end
  end
end
