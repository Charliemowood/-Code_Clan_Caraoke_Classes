require('minitest/autorun')
require('minitest/emoji')
require_relative('../pop_room')
require_relative('../songs')
require_relative('../guests')

class TestPopRoom < MiniTest::Test

 def setup
   @guest1 = Guest.new("Charlie")
   @song1 = Songs.new("In my Head")
   @pop_room1 = PopRoom.new()
 end

 def test_class_PopRoom_exist
   refute_nil(@pop_room1)
 end

end
