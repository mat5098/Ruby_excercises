def bubble_sort(data)
    
    loop do
        i=0
        unsorted = false    
        while i < (data.length-1) do
            if data[i] > data[i+1]
                data[i], data[i+1] = data[i+1], data[i]
                unsorted = true
            end
            i+=1
        end
        break if unsorted == false 
    end
    data
end

puts bubble_sort([4,3,78,2,0,2])