class CashRegister 

    attr_reader :discount 
    attr_accessor :total, :items, :last_item
   

    def initialize (discount = 0,total=0)
        @discount = discount
        @total = total
        @items = []
        @last_item = nil
    end


    def add_item (title,price,quantity=1)
        self.total += price * quantity
        quantity.times {self.items << title}
        self.last_item = {title:title,price:price,quantity:quantity}

    end

    def apply_discount
        if self.discount != 0
         self.total = self.total * (100 - self.discount)/100
         "After the discount, the total comes to $#{self.total}."
        else 
          "There is no discount to apply." 
        end
    end

    def void_last_transaction
    #    if self.items.length ==1
    #    self.total = 0.0
    #    else 
        self.total = self.total - self.last_item[:price] * self.last_item[:quantity]

    end
    
end


