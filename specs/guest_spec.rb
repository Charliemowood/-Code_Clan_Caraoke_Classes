require('minitest/autorun')
require('minitest/emoji')
require_relative('../guest')

class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guest.new("Charlie", 10, "Eye of a tiger")
  end

  def test_guest_class_exists
    refute_nil(@guest1)
  end

  def test_guest_has_name
    assert_equal("Charlie", @guest1.name)
  end

  def test_guest_has_money
    assert_equal(10, @guest1.money)
  end

  def test_guest_has_favourite_song
    assert_equal("Eye of a tiger", @guest1.fav_song)
  end
end
