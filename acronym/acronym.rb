class Acronym
  def self.abbreviate(str)
    str = str.gsub(/\W/, ' ').split
    str.map do |word|
      word[0].match?(/\w/) ? word[0].upcase : nil
    end.compact.join
  end
end
