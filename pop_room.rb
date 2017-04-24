class PopRoom

  def setup
    @guest1 = Guest.new("Charlie", 10, "Eye of a tiger")
    @song1 = Song.new("In my Head")
    @pop_room1 = PopRoom.new()
  end

  def initialize
    @guests = []
  end

  def checked_in(guest)
    @guests << guest
     if @guests.count <= 5
       return @guests.count
     else
       return "We are full."
     end
  end

  def checked_out(guest)
    @guests.delete(guest)
    return @guests.count
  end

  def paid(guest)
    entry_fee = guest.money - 5
    return entry_fee
  end
end
