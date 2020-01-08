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
    quantity.times {|q| @items << title}
    binding.pry
    sum = price * quantity
    self.total += sum 
    @void_last_transaction -= price
    
    
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
