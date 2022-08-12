require './product.rb'
require './order.rb'
require './service.rb'
require './receipt.rb'
class Main
  @input_products = [ [1,"book                           ",'12.49', '0.00'],    
                      [2,"music cd                       ",'14.99', '0.10'],
                      [3,"chocolate bar                  ",'10.15', '0.00'],
                      [4,"imported box of chocolates     ",'10.00', '0.05'], 
                      [5,"imported bottle of perfume     ",'47.50', '0.10'],
                      [6,"imported bottle of perfume     ",'27.99', '0.05'], 
                      [7,"bottle of perfume              ",'18.99', '0.05'],
                      [8,"packet of headache pills       ",'97.51', '0.00'], 
                      [9,"box of imported chocolates     ",'11.25', '0.04']
                   ]
  @arr_orders = [
    # Input 1
    [{
      :quantity =>  1,
      :product_name     => "book"
    },
    {
      :quantity =>  1,
      :product_name     => "music cd"
    },
    {
      :quantity =>  1,
      :product_name     => "chocolate bar"
    }],

    # Input 2
    [{
      :quantity =>  1,
      :product_name     => "imported box of chocolates"
    },
    {
      :quantity =>  1,
      :product_name     => "imported bottle of perfume"
    }],

    # Input 3
    [{
      :quantity =>  1,
      :product_name     => "imported bottle of perfume"
    },
    {
      :quantity =>  1,
      :product_name     => "bottle of perfume"
    },
    {
      :quantity =>  1,
      :product_name     => "packet of headache pills"
    },
    {
      :quantity =>  1,
      :product_name     => "box of imported chocolates"
    }]
  ]

  # def self.test_result
  #   service = Service.new()
  #   # product
  #   products = service.create_products_from_dummy(@input_products)
  #   # service.products_info(products)  

  #   # order
  #   # orders = service.create_orders_from_dummy(products,@arr_orders)
  #   # service.orders_info(orders)

  #   # receipt
  #   tax = 0.05
  #   receipts = service.create_receipts_from_dummy(products,@arr_orders)
  #   service.receipts_info(receipts) 
  # end

  # def self.test
  #   puts "======== Welcom to Hoang testing ===="
  #   service = Service.new()
  #   # product
  #   products = service.init_products(@input_products)
  #   service.products_info(products)  

  #   # order
  #   # orders = service.create_orders_from_dummy(products,@arr_orders)
  #   # service.orders_info(orders)

  #   # receipt
  #   receipts = service.create_receipts_from_dummy(products,@arr_orders)
  #   service.receipts_info(receipts) 
  # end


  def self.run
    puts "*****************************************"
    puts "**************** TESTING ****************"
    puts "*****************************************\n"
    service = Service.new()
    # product
    products = service.create_products_from_dummy(@input_products)
    # order
    @orders = service.create_orders_from_dummy(products,@arr_orders)
     # receipt
    @receipts = service.create_receipts_from_dummy(products,@arr_orders)

    loop do
      puts " ========== SELECT FUCNTION =========  "
      puts " ======= Show list products: 1 "
      puts " ======= Show list orders: 2 "
      puts " ======= Show list receipts (from dummy data): 3 "
      puts " ======= Order item: 4 "
      puts " ======= THOAT: 0 \n"
      print "Please input value (0 -> 4): "
      input = gets.chomp
      if (input == "1")
        service.products_info(products) 
        puts "\n\n\n"
      elsif (input == "2")
        service.orders_info(@orders)
        puts "\n\n\n"
      elsif (input == "3")
        service.receipts_info(@receipts)
        puts "\n\n\n"
      elsif (input == "4")
        new_orders = Array.new
        loop do
          service.products_info(products) 
          product_id = 1
          loop do
            print "Input product ID (1 -> 9): "
            product_id = gets.chomp
            if(product_id.to_i < 1 || product_id.to_i > 9 )
              puts "==== Please input correct number. ===="
            end
            break if (product_id.to_i > 0 && product_id.to_i < 10) 
          end

          print "Input quantity: "
          product_quantity = gets.chomp
          product = products[product_id.to_i - 1]
          order = Order.new(product_quantity.to_i,product)
          new_orders << order
          # add new order to list order
          @orders << order

          puts " ======= Exit and show current receipt detail: 6 "
          puts " ======= Press another number to order continue "
          print "Option: "

          select = gets.chomp
          break if (select == "6") 
        end

        new_receipt = Receipt.new(new_orders)
        new_receipt.detail
        @receipts << new_receipt

      elsif (input != "0")
        puts "The input value is not match. "
      end
      break if (input == "0") 
    end    
  end
end

Main.run  
# Main.test_result
# Main.test