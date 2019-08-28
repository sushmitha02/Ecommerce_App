require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  test "should not save address without name" do
  	address = Address.new
  	assert_not  address.save
  end

  test "should not save address without phone_no" do
  	address = Address.new
  	assert_not  address.save
  end

  test "should not save address without address1" do
  	address = Address.new
  	assert_not  address.save
  end

  test "should not save address without address2" do
  	address = Address.new
  	assert_not  address.save
  end

  test "should not save address without state" do
  	address = Address.new
  	assert_not  address.save
  end

  test "should not save address without city" do
  	address = Address.new
  	assert_not  address.save
  end

  test "should not save address without pincode" do
  	address = Address.new
  	assert_not  address.save
  end

end
