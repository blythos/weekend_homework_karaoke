require("minitest/autorun")
require("minitest/rg")

require_relative("../Song")

class TestSong < MiniTest::Test

  def setup()
    @song1 = Song.new("Babymetal", "Megitsune")
  end

  def test_get_song_title()
    assert_equal("Megitsune", @song1.title)
  end

  def test_get_song_artist()
    assert_equal("Babymetal", @song1.artist)
  end


end
