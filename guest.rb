class Guest
  attr_reader :name, :money, :fav_song
  def initialize(name, money, fav_song)
    @name = name
    @money = money
    @fav_song = fav_song
  end
end
