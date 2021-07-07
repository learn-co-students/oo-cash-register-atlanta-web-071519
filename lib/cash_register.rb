require 'pry'

class CashRegister
    
    attr_accessor :total, :items, :price, :discount
    def initialize(discount=nil)
        @total = 0
        @items = []
        @discount = discount 
    end

    def add_item(title, price, quantity=1)
        #maybe make the above variable local to the method 
        quantity.times {self.items << title}
         
        self.total += price * quantity 
       
        self.price = price 
    end

    def apply_discount
      
        if self.discount
            self.total -= self.total * (self.discount).to_f/100
            p "After the discount, the total comes to $#{self.total.to_i}." 
        else 
            self.total 
            p "There is no discount to apply."
        end 
    end

    def void_last_transaction
        self.total -= self.price 
       
        self.items.pop
    end

end

