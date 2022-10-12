file='text.txt'
h = Hash.new
f = File.open(file, "r")
f.each_line { |line|
  words = line.split(/[\W_]+/)
  words.each { |w|
    downcase = w.downcase
    if h.has_key?(downcase)
      h[downcase] = h[downcase] + 1
    else
      h[downcase] = 1
    end
  }
}

final = h.sort_by{ |key, value| value}.reverse # array of arrays with word and occurences

count = final.sum { | word, number | number} # total number of words

limit = (count * 0.8).to_i # 80% of total

# iterate over array of sub_arrays and sum occurence
# fill in eighty_percent with sub_arrays until sum is >= limit

sum = 0
eighty_percent = []
final.each do | sub_array |
  sum += sub_array[1]
  eighty_percent << sub_array
  if sum >= limit
    break
  end
end

p eighty_percent.length
