class BeerSong
  def self.recite(start_value, iterations)
    song = ''
    iterations.times do |iteration|
      song << "#{start_value} bottles of beer on the wall, #{start_value} bottles of beer.\n"
      start_value -= 1
      song << "Take one down and pass it around, #{start_value} bottles of beer on the wall.\n"
    end
    song
  end
end
