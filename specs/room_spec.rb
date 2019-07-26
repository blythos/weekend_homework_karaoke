require("minitest/autorun")
require("minitest/rg")

require_relative("../Room")
require_relative("../Guest")
require_relative("../Song")

class TestRoom < MiniTest::Test

  def setup()
    @room = Room.new("Aztec Suite")
    @guest1 = Guest.new("Kyle")
    @guest2 = Guest.new("Kev")
    @song1 = Song.new("Annie Murphy", "A Little Bit Alexis")
  end

  def test_get_room_name()
    assert_equal("Aztec Suite", @room.name)
  end

  def test_add_guest()
    @room.add_guest(@guest1)
    assert_equal(1, @room.guests_amount)
  end

  def test_remove_guest()
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    @room.remove_guest(@guest1)
    assert_equal(1, @room.guests_amount)
  end

  def test_songs_amount()
    assert_equal(0, @room.songs_amount)
  end

  def test_add_songs()
    @room.add_song(@song1)
    assert_equal(1, @room.songs_amount)
  end

  


end
