require 'test_helper'

class CartTest < ActiveSupport::TestCase
  
  setup do 
    @cart = carts(:one)
    @product = products(:one)
  end

  test '#add_product, returns added line item' do
    line_item = @cart.add_product(@product)
    @cart.add_product(@product)

    assert @cart.line_items.count, 1
    assert line_item.quantity, 2
  end

  test '#total_price, returns sum of prices of each item' do
    sum = 0.0
    line_items = @cart.line_items

    line_items.each do |item|
      sum += item.total_price
    end

    assert @cart.total_price, sum
  end
end
