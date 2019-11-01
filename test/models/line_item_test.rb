require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
   
  setup do 
    @line_items = line_items(:one)
  end

  test '#total_price, returns sum of prices of all products' do
    total =  @line_items.quantity * @line_items.product.price
    
    assert_equal total,  @line_items.total_price
  end
end
