class Scrabble
  attr_reader :word

  def initialize(word)
    @word = word  
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  def score
    return 0 if word.nil?

    word.gsub(/\W/, '').chars.inject(0) do |sum, letter|
      if letter.upcase.match?(/[AEIOULNRST]/)
        sum += 1
      elsif letter.upcase.match?(/[DG]/)
        sum += 2
      elsif letter.upcase.match?(/[BCMP]/)
        sum += 3
      elsif letter.upcase.match?(/[FHVWY]/)
        sum += 4
      elsif letter.upcase.match?(/[K]/)
        sum += 5
      elsif letter.upcase.match?(/[JX]/)
        sum += 8
      elsif letter.upcase.match?(/[QZ]/)
        sum += 10
      else
        sum
      end
    end
  end
end
