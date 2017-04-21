require_relative('./songs.rb')
require_relative('./guests.rb')

class PopRoom

  def setup
    @guest1 = Guest.new("Charlie")
    @song1 = Songs.new("In my Head")
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
#
#   def run_karaoke
#     @pop_room1.checked_in(@guest1)
# #   @song1.plays
# #   @pop_room1.checked_out(@guest1)
# #   return "The party is on!"
#   end
end
