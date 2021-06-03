class CreateCartMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_menus do |t|
      t.references :menu, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
