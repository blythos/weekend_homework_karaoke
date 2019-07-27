require("minitest/autorun")
require("minitest/rg")

require_relative("../Room")
require_relative("../Guest")
require_relative("../Song")

class TestRoom < MiniTest::Test

  def setup()
    @room = Room.new("Aztec Suite", 3, 20)
    @guest1 = Guest.new("Kyle", 10, "The Birdie Song")
    @guest2 = Guest.new("Kev", 30, "My Heart Will Go On")
    @guest3 = Guest.new("Stephen", 40, "A Little Bit Alexis")
    @song1 = Song.new("Annie Murphy", "A Little Bit Alexis")
    @song2 = Song.new("Myss Keta", "Una Donna Che Conta")
    @song3 = Song.new("Ashley O", "Right Where I Belong")
    @song4 = Song.new("Ashley O", "On A Roll")
    @guests = [@guest1, @guest2, @guest3]
    @playlist = [@song1, @song2, @song3, @song4]
    @guests.each { |guest| @room.add_guest(guest) }
    @playlist.each { |song| @room.add_song(song) }
  end

  def test_get_room_name()
    assert_equal("Aztec Suite", @room.name)
  end

  def test_add_guest()
    assert_equal(3, @room.guests_amount)
  end

  def test_remove_guest()
    @room.remove_guest(@guest1)
    assert_equal(2, @room.guests_amount)
  end

  def test_playlist_size()
    assert_equal(4, @room.playlist_size)
  end

  def test_add_songs()
    @room.add_song(@song1)
    assert_equal(5, @room.playlist_size)
  end

  def test_room_capacity()
    assert_equal(3, @room.capacity)
  end

  def test_check_in__returns_true()
    assert_equal(true, @room.check_in)
  end

  def test_check_in__returns_false()
    @room.add_guest(@guest1)
    assert_equal(false, @room.check_in)
  end

  def test_pay_entry_fee__return_false()
    assert_equal(false, @room.pay_entry_fee(@guest1))
  end

  def test_pay_entry_fee__return_true()
    assert_equal(true, @room.pay_entry_fee(@guest2))
    assert_equal(10, @guest2.cash)
  end

  # Produces an array of songs by the same artist.
  def test_playlist_search_by_artist()
    found_songs = [@song3, @song4]
    assert_equal(found_songs, @room.search_by_artist("Ashley O"))
  end

  # Produces an array of songs with the same title. Handy if there's a particular cover you want.
  def test_playlist_search_by_title
    assert_equal([@song2], @room.search_by_title("Una Donna Che Conta"))
  end


end
