require('minitest/autorun')
require('minitest/emoji')
require_relative('../songs')

class TestSongs < MiniTest::Test

  def setup
    @song1 = Songs.new()
  end

  def test_songs_class_exists
    refute_nil(@song1)
  end
end
