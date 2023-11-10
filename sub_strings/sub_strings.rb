def substrings(string, dictionary)
    result_hash = Hash.new(0)
    lowercase_string = string.downcase

    dictionary.each { |word|
        check = lowercase_string.scan(word).length
        if check != 0
            result_hash[word] = check
        end
    }
    if result_hash != {} then return "\nmatches found",result_hash else return "\nno matches found" end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)

puts substrings(gets, dictionary)