require('minitest/autorun')
require('minitest/emoji')
require_relative('../guests')

class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guest.new()
  end

  def test_guest_class_exists
    refute_nil(@guest1)
  end


end
