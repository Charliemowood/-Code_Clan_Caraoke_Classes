class Song
  attr_reader :name

  def initialize(song_name)
    @name = song_name
  end

  def plays
    return "#{@name} is playing"
  end
end
