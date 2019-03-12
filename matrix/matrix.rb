class Matrix
  attr_reader :arr

  def initialize(input)
    @arr = input.split("\n").map do |arrs|
      arrs.split.map(&:to_i)
    end
  end

  def rows
    arr
  end

  def columns
    arr.transpose
  end
end
