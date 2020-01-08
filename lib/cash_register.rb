require "pry"
class CashRegister 
  attr_accessor :total, :discount, :items, :void_last_transaction
  
  def initialize(discount=nil, void_last_transaction=0)
    @total = 0
    @discount = discount 
    @items =[]
    @void_last_transaction = void_last_transaction
  end 
  
  def add_item(title, price, quantity=1)
    price_array = []
    quantity.times {|q| @items << title} 
    price_array << price * quantity
    price_array.each do |i| i+i = self.total 
  end 
end
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
