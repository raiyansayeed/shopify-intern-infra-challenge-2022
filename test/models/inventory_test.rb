require "test_helper"

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not make warehouse go over capacity" do
    assert_no_difference("Inventory.count") do
      inventories(:over_capacity_product).save
    end
  end

  test "shouldn't have negative dimensions" do 
    assert_not inventories(:neg_dimensions_product).valid?
  end

  test "shouldn't have blank name" do
    assert_not inventories(:no_name_product).valid?
  end

  test "shouldn't have negative amount " do 
    assert_not inventories(:neg_amount_product).valid?
  end

  test "shouldn't have negative price" do 
    assert_not inventories(:neg_price_product).valid?
  end
end
