require("minitest/autorun")
require("minitest/rg")

require_relative("../Room")

class TestRoom < MiniTest::Test

  def setup()
    @room = Room.new("Aztec Suite")
  end

  def test_get_room_name()
    assert_equal("Aztec Suite", @room.name)
  end
end
