require('minitest/autorun')
require('minitest/emoji')
require_relative('../songs')

class TestSongs < MiniTest::Test

  def setup
    @song1 = Songs.new("In my Head")
  end

  def test_songs_class_exists
    refute_nil(@song1)
  end

  def test_song_has_name
    assert_equal("In my Head", @song1.name)
  end

  def test_play_song
    assert_equal(@song1.plays, "#{@song1.name} is playing")
  end
end
