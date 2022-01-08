class Inventory < ApplicationRecord
    audited

    belongs_to :warehouse, optional: true

    before_update :validate_inventory_not_over_warehouse_limit

    validates :product_name, presence: true
    validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 } 
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 } 

    # in metres
    validates :width, presence: true, numericality: { greater_than_or_equal_to: 0 } 
    validates :length, presence: true, numericality: { greater_than_or_equal_to: 0 } 
    validates :height, presence: true, numericality: { greater_than_or_equal_to: 0 } 

    validate :validate_inventory_not_over_warehouse_limit

    def validate_inventory_not_over_warehouse_limit
        if (warehouse_id)
            if (warehouse.current_capacity + amount * (width * length * height) > warehouse.capacity)
                errors.add(:warehouse_id, "does not have enough capacity to accomodate this item")
            end
        end
    end

end
