require("minitest/autorun")
require("minitest/rg")

require_relative("../Room")
require_relative("../Guest")
require_relative("../Song")

class TestRoom < MiniTest::Test

  def setup()
    @room = Room.new("Aztec Suite", 3, 20)
    @guest1 = Guest.new("Kyle", 10)
    @guest2 = Guest.new("Kev", 30)
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

  def test_room_capacity()
    assert_equal(3, @room.capacity)
  end

  def test_check_in__returns_true()
    @room.add_guest(@guest1)
    assert_equal(true, @room.check_in)
  end 

  def test_pay_entry_fee__return_false()
    assert_equal(false, @room.pay_entry_fee(@guest1))
  end

  def test_pay_entry_fee__return_true()
    assert_equal(true, @room.pay_entry_fee(@guest2))
    assert_equal(10, @guest2.cash)
  end


end
