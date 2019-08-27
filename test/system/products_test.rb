require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit products_url

    assert_selector "h1", text: "Products"
  end

  test "creating a New Product" do
    visit products_path
    
    click_on "New Product"
    
    fill_in "Title", with: "Web Design"
    fill_in "Price", with: "152.78"
    fill_in "Description", with: "A collection of recipes for solid Ruby on Rails applications. Extracted from dozens of production apps and 10,000+ hours of deliberate Ruby on Rails practice since 2005."
    
    click_on "Create Product"
    
    assert_text "Creating an Product"
  end
end
