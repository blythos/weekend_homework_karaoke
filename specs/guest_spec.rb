require("minitest/autorun")
require("minitest/rg")

require_relative("../Guest")
require_relative("../Song")
require_relative("../Room")

class TestGuest < MiniTest::Test

  def setup()
    @song1 = Song.new("Annie Murphy", "A Little Bit Alexis")
    @song2 = Song.new("Myss Keta", "Una Donna Che Conta")
    @song3 = Song.new("Ashley O", "Right Where I Belong")
    @song4 = Song.new("Ashley O", "On A Roll")
    @guest1 = Guest.new("Stephen", 50, @song1)
    @guest2 = Guest.new("Kev", 30, @song2)
    @room = Room.new("Aztec Suite", 3, 20)
  end

  def test_get_guest_name()
    assert_equal("Stephen", @guest1.name)
  end

  def test_get_guest_cash()
    assert_equal(50, @guest1.cash)
  end

  def test_remove_cash()
    @guest1.remove_cash(10)
    assert_equal(40, @guest1.cash)
  end

  def test_fav_song()
    @room.add_song(@song1)
    assert_equal("Yay! My fave!", @guest1.fav_song(@room))
  end

  def test_no_fav_song()
    @room.add_song(@song1)
    @room.add_song(@song3)
    assert_equal("Meh.", @guest2.fav_song(@room))
  end 

end
