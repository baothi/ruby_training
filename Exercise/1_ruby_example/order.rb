require './product.rb'
class Order
  def initialize(quantity, product)
    @quantity = quantity
    @product  = product
  end

  def quantity
    @quantity
  end

  def product
    @product
  end

  def total
    self.quantity * self.product.price    
  end

  def detail
    puts "    #{self.quantity}   | #{self.product.name} | #{'%.2f' % self.product.price} | #{'%.2f' % self.product.tax} | #{'%.2f' % self.product.final_price}"
  end
end