class Luhn
  def self.valid?(string)
    string.gsub!(' ', '')
    return false if string.length < 2 || string.match?(/\D/)
    number_arr = string.chars.map(&:to_i).reverse
    double_array(number_arr).sum % 10 == 0
  end

  private

  def self.double_array(arr)
    arr.map.with_index do |number, index|
      index.odd? ? double_digit(number) : number
    end
  end

  def self.double_digit(digit)
    digit * 2 > 9 ? digit = digit * 2 - 9 : digit * 2
  end
end
