class AddDimensionsToInventory < ActiveRecord::Migration[6.1]
  def change
    add_column :inventories, :width, :decimal
    add_column :inventories, :length, :decimal
    add_column :inventories, :height, :decimal
  end
end
