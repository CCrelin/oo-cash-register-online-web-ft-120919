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
    
    if @discount != 0 || nil 
     @discount = @discount.to_f / @total * 10 
      sum = @discount * @total
      @total = @discount - sum
        return "After the discount, the total comes to $#{@total.to_i}." 
    elsif @discount == 0 || nil 
      return "There is no discount to apply."
    end
  end
end 
