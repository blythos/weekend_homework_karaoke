require("minitest/autorun")
require("minitest/rg")

require_relative("../Room")
require_relative("../Guest")

class TestRoom < MiniTest::Test

  def setup()
    @room = Room.new("Aztec Suite")
    @guest1 = Guest.new("Kyle")
  end

  def test_get_room_name()
    assert_equal("Aztec Suite", @room.name)
  end

  def test_add_guest()
    @room.add_guest(@guest1)
    assert_equal(1, @room.guests_amount)
  end
end
