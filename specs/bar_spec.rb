require("minitest/autorun")
require("minitest/rg")

require_relative("../Bar")
require_relative("../Room")
require_relative("../Guest")
require_relative("../Song")

class TestBar < MiniTest::Test

  def setup()
    @bar = Bar.new()
    @room = Room.new("Aztec Suite", 3, 20)
    @song1 = Song.new("Annie Murphy", "A Little Bit Alexis")
    @guest1 = Guest.new("Stephen", 50, @song1)
  end

  def test_add_to_tab()
    @bar.add_to_tab(@guest1, 10)
    assert_equal(10, @bar.bar_tab)
    assert_equal(40, @guest1.cash)
  end

end
