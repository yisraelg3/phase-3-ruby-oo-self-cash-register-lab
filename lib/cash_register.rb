class CashRegister
    attr_accessor :total, :discount, :items, :last_item

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_item = 0
    end

    def add_item(title, price, qty=1)
        self.total += price * qty
        qty.times do 
            @items << title 
        end
        self.last_item = price * qty
    end

    def apply_discount
        self.total -= @total *  @discount /100.00
        @discount > 0 ? "After the discount, the total comes to $#{@total.to_i}." : "There is no discount to apply."
    end

    def void_last_transaction
        self.total -= @last_item
    end
end
