require("minitest/autorun")
require("minitest/rg")

require_relative("../Guest")

class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Stephen")
  end

  def test_get_guest_name()
    assert_equal("Stephen", @guest1.name)
  end

end
