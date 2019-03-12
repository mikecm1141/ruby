class Series
  attr_reader :series

  def initialize(series)
    @series = series.chars
  end

  def slices(amount)
    raise ArgumentError if amount > series.length

    result = []

    series.length.times do |step|
      result.push(series[step...step + amount].join)
    end

    result.select { |ele| ele.length === amount }
  end

  private

  attr_reader :series
end
