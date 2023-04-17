def substring(text, dict)
    text_low = text.downcase.split(' ')
    cout = text_low.reduce(Hash.new(0)) do |sum, word|
        dict.each {|word_dict| sum[word_dict]+=1 if word.include?(word_dict)}
        sum     
    end
    puts cout
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substring("Howdy partner, sit down! How's it going?", dictionary)