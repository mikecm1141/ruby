class Tournament
  def self.tally input
    tally_result = <<-HEADER.gsub(/^ */, '')
    Team                           | MP |  W |  D |  L |  P
    HEADER

    require 'pry'; binding.pry
  end
end
