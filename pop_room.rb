class PopRoom

  def setup
    @guest1 = Guest.new("Charlie")
    @song1 = Song.new("In my Head")
    @pop_room1 = PopRoom.new()
  end

  def initialize
    @guests = []
  end

  def checked_in(guest)
    @guests << guest
    return @guests.count
  end

  def checked_out(guest)
    @guests.delete(guest)
    return @guests.count
  end
end
