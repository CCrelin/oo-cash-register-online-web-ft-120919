class CashRegister 
  attr_accessor :total, :discount
  
  def initialize(discount=nil)
    @total = 0
    @discount = discount 
  end 
  
  def add_item(title, price, quantity=1)
   sum = price * quantity
    self.total += sum 
  end 

  def apply_discount
    if discount != nil
      self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
      return "After the discount, the total comes to $#{self.total}."
    else 
      return "There is no discount to apply."
    end
  end
  
  def items
  
    add_item.shift
     

  end
  
end 
