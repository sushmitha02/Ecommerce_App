require "application_system_test_case"

class AddressesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit addresses_url
    assert_selector "h1", text: "Addresses"
  end

  test "creating a New Address" do
    visit addresses_url
    click_link "New Address"


    fill_in "Address_no1", with: "vd xsgbt"
    fill_in "Address2", with: "hbtgdhyju"
    fill_in "City", with: "efrsbgh"
    fill_in "Address name", with: "sushmi"
    fill_in "Phone no", with: "+918959568734"
    fill_in "Pincode", with: "2345"
    fill_in "State", with: "fhtj"

    click_on "Add Address"

    assert_text "Address was successfully created"
    click_link "Back"
  end

  test "updating a Address" do
    visit addresses_url
    click_link "Edit", match: :first

    fill_in "Address_no1", with: "vd xsgbt1"
    fill_in "Address2", with: "hbtgdhyju2"
    fill_in "City", with: "efrsbghh"
    fill_in "Address name", with: "sushmih"
    fill_in "Phone no", with: "+918959568737"
    fill_in "Pincode", with: "23456"
    fill_in "State", with: "fhtjh"
    click_on "Add Address"

    assert_text "Address was successfully updated"
    click_on "Back"
  end

  test "destroying a Address" do
    visit addresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Address was successfully destroyed"
  end
end
