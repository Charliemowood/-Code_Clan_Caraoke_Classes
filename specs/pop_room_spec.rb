require('minitest/autorun')
require('minitest/emoji')
require_relative('../pop_room')
require_relative('../song')
require_relative('../guest')

class TestPopRoom < MiniTest::Test

 def setup
   @guest1 = Guest.new("Charlie", 10)
   @guest2 = Guest.new("Tom", 10)
   @guest3 = Guest.new("Pavel", 10)
   @guest4 = Guest.new("Vasek", 10)
   @guest5 = Guest.new("Ana", 10)
   @guest6 = Guest.new("Jana", 10)
   @song1 = Song.new("In my Head")
   @pop_room1 = PopRoom.new()
 end

 def test_class_PopRoom_exists
   refute_nil(@pop_room1)
 end

 def test_guest_can_check_in_to_PopRoom
   assert_equal(1, @pop_room1.checked_in(@guest1))
 end

 def test_guest_can_check_out_of_PopRoom
   @pop_room1.checked_in(@guest1)
   assert_equal(0, @pop_room1.checked_out(@guest1))
 end
 #
 def test_run_karaoke
     @pop_room1.checked_in(@guest1)
     @song1.plays
     @pop_room1.checked_out(@guest1)
     puts "The party is on!"
 end

 def test_capacity_5
    @pop_room1.checked_in(@guest1)
    @pop_room1.checked_in(@guest2)
    @pop_room1.checked_in(@guest3)
    @pop_room1.checked_in(@guest4)
    @pop_room1.checked_in(@guest5)
    assert_equal("We are full.", @pop_room1.checked_in(@guest6))
 end

 def test_guest_paid_entry_fee
   assert_equal(5, @pop_room1.paid(@guest1))
 end
end
