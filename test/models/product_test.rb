require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save product without title" do
    product = Product.new
    assert_not product.save
  end

  test 'name must be unique' do
    new_product = Product.new
    refute new_product.valid?
  end

  test "should not save product without price" do
    product = Product.new
    assert_not product.save
  end

  test "should have numeric price" do
    product = Product.new(price: 'test')
    assert_not product.valid?
    assert_equal ["is not a number"], product.errors.messages[:price]
  end

  test "should not save product without description" do
    product = Product.new
    assert_not  product.save
  end
end
