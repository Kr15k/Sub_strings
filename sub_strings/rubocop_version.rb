def substrings(string, dictionary)
  result_hash = Hash.new(0)
  lowercase_string = string.downcase

  dictionary.each do |word|
    check = lowercase_string.scan(word).length
    result_hash[word] = check if check != 0
  end
  result_hash != {} ? ["\nmatches found", result_hash] : "\nno matches found"
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings("Howdy partner, sit down! How's it going?", dictionary)

puts substrings(gets, dictionary)
