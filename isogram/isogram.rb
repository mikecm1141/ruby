class Isogram
  def self.isogram?(str)
    result = true
    letter_counts = Hash.new(0)

    str.gsub(/\W/, '').chars.each do |ele|
      letter_counts[ele.downcase] += 1
    end

    letter_counts.values.each do |value|
      result = false if value > 1
    end

    result
  end
end
