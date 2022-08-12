require './product.rb'
require './order.rb'
require './receipt.rb'
class Service
  # create product from dummy data
  def create_products_from_dummy(products_input)
    products = Array.new
    products_input.each do |input|
      p = Product.new(input[0], input[1], input[2], input[3])
      products << p
    end
    products
  end

  # show all products 
  def products_info(products)
    puts "---------------------------------- PRODUCTS ------------------------------------"
    puts " ID |                 Name                |   Price  |   Tax   |  Price + Tax"   
    puts "--------------------------------------------------------------------------------"
    products.each do |p|
      p.detail
    end
    puts "--------------------------------------------------------------------------------"
  end

  # create order from dummy data
  def create_orders_from_dummy(products,orders_input)
    orders = Array.new
    orders_input.each do |pks|
      pks.each do |input|
        product = Product.find_by_name(products ,input[:product_name].to_s )
        order = Order.new(input[:quantity],product)
        orders << order
      end
    end
    orders
  end

  # show all orders 
  def orders_info(orders)
    puts "---------------------------------- ORDERS ----------------------------"
    puts "Quantity|             Product Name        | Price | Tax  | Price + Tax"
    puts "----------------------------------------------------------------------"
    orders.each do |order|
      order.detail
    end
    puts "----------------------------------------------------------------------"
  end 

  # Create receipt from dummmy data
  def create_receipts_from_dummy(products,orders_input)
    receipts = Array.new
    orders_input.each do |pks|
      orders = Array.new
      pks.each do |input|
        product = Product.find_by_name(products ,input[:product_name].to_s )
        order = Order.new(input[:quantity],product)
        orders << order
      end
      receipt = Receipt.new(orders)
      receipts << receipt
    end
    receipts
  end

  # show all receipts
  def receipts_info(receipts)
    puts "=========================== ALL RECEIPTS =========================== "
    receipts.each do |receipt|
      receipt.detail
    end    
    puts "====================================================================== "
  end

end 