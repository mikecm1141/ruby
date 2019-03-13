class ResistorColors
  COLORS = {
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8,
    white: 9
  }

  def self.value colors_input
    first_value = COLORS[colors_input.first.to_sym]
    second_value = COLORS[colors_input.last.to_sym]

    ("#{first_value}" + "#{second_value}").to_i
  end
end
