require "test_helper"

class WarehouseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "capacity must be greater than 0" do
    assert_not warehouses(:neg_capacity_warehouse).valid?
  end

  test "location shouldn't be nil" do
    assert_not warehouses(:no_location_warehouse).valid?
  end

end
