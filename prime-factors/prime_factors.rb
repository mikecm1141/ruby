class PrimeFactors
  # @params integer
  # @return array of integers
  def self.for integer
    return [] if integer == 1

    prime_factors = []
    divisor = 2

    until integer == 1
      if integer % divisor == 0
        prime_factors << divisor
        integer /= divisor
      else
        divisor += 1
      end
    end

    prime_factors
  end
end
