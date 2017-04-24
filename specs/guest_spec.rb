require('minitest/autorun')
require('minitest/emoji')
require_relative('../guest')

class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guest.new("Charlie")
  end

  def test_guest_class_exists
    refute_nil(@guest1)
  end

  def test_guest_has_name
    assert_equal("Charlie", @guest1.name)
  end
end
