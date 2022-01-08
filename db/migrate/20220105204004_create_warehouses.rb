class CreateWarehouses < ActiveRecord::Migration[6.1]
  def change
    create_table :warehouses do |t|
      t.string :location
      t.integer :capacity

      t.timestamps
    end
  end
end
