class Clock
  attr_reader :time,
              :hour,
              :minute

  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute

    input_hour_seconds = hour * 60 * 60
    input_minute_seconds = minute * 60
    @time = Time.at(input_hour_seconds + input_minute_seconds).utc
  end

  def to_s
    time.strftime('%H:%M')
  end

  def + added_time
    new_hour = hour + added_time.hour
    new_minute = minute + added_time.minute

    Clock.new(hour: new_hour, minute: new_minute)
  end

  def - subtracted_time
    new_hour = hour - subtracted_time.hour
    new_minute = minute - subtracted_time.minute

    Clock.new(hour: new_hour, minute: new_minute)
  end

  def == clock
    to_s == clock.to_s
  end
end
