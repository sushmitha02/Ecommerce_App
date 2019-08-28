require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get index" do
    get admin_products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { description: @product.description, main_image: @product.main_image, price: @product.price, thumb_image: @product.thumb_image, title: @product.title } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(Product.first)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(Product.last)
    assert_response :success
  end

  test "should update product" do
    patch product_url(Product.last), params: { product: { description: @product.description, main_image: @product.main_image, price: @product.price, thumb_image: @product.thumb_image, title: @product.title } }
    assert_redirected_to product_url(Product.last)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(Product.last)
    end

    assert_redirected_to products_url
  end
end
