class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.string :product_name
      t.integer :amount
      t.decimal :price

      t.timestamps
    end
  end
end
