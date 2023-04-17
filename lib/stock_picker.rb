def stock_picker(price)
    profit = 0
    index_buy_sell = []
    price.each_with_index do |element, index| 
        price.each_with_index do |element1, index1|
            profit1 = element1 - element
            #print [index, index1]
            #puts profit1

            if profit1 > profit && index<index1
                profit = profit1
                index_buy_sell= [index, index1]
                #print "coś mam!!! #{[index, index1]} to: #{profit1}\n"
            end
        end
    end
    puts index_buy_sell
end


stock_picker([17,3,6,9,15,8,6,1,10])