require "pry"
class CashRegister 
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount=nil, last_transaction=0)
    @total = 0
    @discount = discount 
    @items =[]
    @last_transaction = last_transaction
  end 
  
  def add_item(title, price, quantity=1)
    quantity.times {|q| @items << title} 
     sum = price * quantity
     self.total += self.total += sum
    
  end 
end


  def apply_discount
    if discount != nil
      self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
      return "After the discount, the total comes to $#{self.total}."
    else 
      return "There is no discount to apply."
    end
  end
  
  
end 
