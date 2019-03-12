# frozen_string_literal: true

# Phone Number Clean Up Class
class PhoneNumber
  def self.clean(number)
    numbers = number.scan(/\d/)
    return nil unless numbers.length > 9
    return nil if numbers.length == 11 && numbers.first != 1

    if numbers.length === 11
      numbers.join[1..numbers.length]
    else
      numbers.join
    end
  end
end
