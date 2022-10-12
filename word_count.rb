def word_count(input)
  words = input.split(' ')
  count = Hash.new(0) # key values are empty
  words.each { |word| count[word.downcase] += 1 }
  count
end
print word_count('ich ich ich nein')
