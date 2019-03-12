class Series
  attr_reader :series

  def initialize(series)
    @series = series
  end

  def slices(amount)
    n_slices = series.length - amount + 1

    raise ArgumentError if n_slices <= 0

    n_slices.times.map do |time|
      series[time, amount]
    end
  end
end
