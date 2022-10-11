class Phrase
  # def initialize(input)
  #   @input = input
  # end

  # # def word_count
  # #   words = @input.downcase.scan(/\b[\w']+\b/)
  # #   words.tally
  # # end

  def word_count(input)
    words = input.split(' ')
    count = Hash.new(0) # key values are empty
    words.each { |word| count[word.downcase] += 1 }
    count
  end
end
print Phrase.new.word_count('ich ich ich nein')
