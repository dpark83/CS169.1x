class BookInStock
    def initialize(isbn, price)
        if isbn.length == 0 
           raise ArgumentError
        end
        if price <= 0
            raise ArgumentError 
        end
        @isbn = isbn
        @price = price
    end

    def isbn
        return @isbn
    end
    def isbn=(isbn)
        @isbn = isbn
    end
    
    def price
        return @price
    end
    def price=(price)
        @price = price
    end
   
   def price_as_string
       return "$#{'%.2f' % @price}"
   end
end
