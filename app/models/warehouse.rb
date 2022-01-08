class Warehouse < ApplicationRecord
    audited

    has_many :inventory, dependent: :nullify

    # in metres^3
    validates :capacity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 } 

    def current_capacity
        dimensions = []
        inventory.each do |item|
            dimensions << item.width * item.length * item.height
        end
        return dimensions.sum
    end
end
