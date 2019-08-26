require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit products_url

    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_path
    
    click_on "New Product"
    
    fill_in "Title", with: "Creating an Product"
    fill_in "Price", with: "Creating an Product"
    fill_in "Description", with: "Created this product successfully!"
    
    click_on "Create Product"
    
    assert_text "Creating an Product"
  end
end
