require 'test_helper'

class AddressesControllerTest < ActionDispatch::IntegrationTest

	test "should get index" do
		get addresses_url

		assert_response :success
	end

	test "should get new" do
		get new_address_url
		assert_response :success
	end

	test "should create address" do
		assert_difference('Address.count') do
			post addresses_path, params: { address: { address1: "vd xsgbt", address2: "hbtgdhyju", city: "efrsbgh", name: "sushmi", phone_no: "+918959568734", pincode: "2345", state: "fhtj" } }
		end

		assert_redirected_to address_url(Address.last)
	end

	test "should show address" do
		get address_url(Address.first)
		assert_response :success
	end

	test "should get edit" do
		get address_url(Address.first)

		assert_response :success
	end


	test "should update address" do
		put address_url(Address.first), params: { address: { address1: "vd xsgbt1", address2: "hbtgdhyju2", city: "efrsbghh", name: "sushmih", phone_no: "+918959568737", pincode: "23457", state: "fhtjh" } }
		assert_redirected_to address_url(Address.first)
	end

	test "should destroy address" do
		assert_difference('Address.count', -1) do
			delete address_url Address.last
		end
		assert_redirected_to addresses_url

	end

end
