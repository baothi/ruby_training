require './product.rb'
require './order.rb'
class Receipt
  def initialize(orders )
    @orders   = orders
  end

  def orders
    @orders
  end

  

  def detail
    total = 0
    tax_total = 0
    # puts "  quantity   |         Product Name  | Price | Tax | Final Price"
    puts "---------------------------- RECEIPT DETAIL --------------------------"
    puts "Quantity|           Product Name          | Price | Tax  | Price + Tax "   
    puts "----------------------------------------------------------------------"
    orders.each do |order|
      order.detail
      total = (total + (order.quantity * order.product.price)).round(2)
      tax_total = (tax_total + (order.quantity * order.product.tax)).round(2)
    end

    sum = (tax_total + total).round(2)


    puts "\n"
    puts "Sales Taxes: #{tax_total}"
    puts "Total: #{total}"
    puts "Sum: #{sum}"
    puts "----------------------------------------------------------------------"
  end

end