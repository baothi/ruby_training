class Product
  def initialize(id,name,price,tax)
    @id     = id
    @name   = name
    @price  = price.to_f.round(2)
    @tax    = tax.to_f.round(2)
  end

  def id
    @id
  end

  def name
    @name
  end

  def price
    @price
  end

  def tax
    @tax
  end

  def final_price
    ( @price + (@price * @tax)).round(2)
  end


  def detail
    puts "  #{self.id} |   #{self.name}   |   #{ '%.2f' % self.price}  |  #{ '%.2f' % self.tax}   |   #{ '%.2f' % self.final_price}"
  end

  def self.find_by_name(products, product_name)
    products.each do |p|
      if p.name.strip == product_name.strip
        return p
      end
    end
    nil
  end
  
end