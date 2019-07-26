require("minitest/autorun")
require("minitest/rg")

require_relative("../Guest")

class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Stephen", 50)
  end

  def test_get_guest_name()
    assert_equal("Stephen", @guest1.name)
  end

  def test_get_guest_cash()
    assert_equal(50, @guest1.cash)
  end

end
