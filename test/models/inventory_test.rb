require "test_helper"

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not make warehouse go over capacity" do
    assert_no_difference("Inventory.count") do
      inventories(:bad_product).save
    end
  end
end
