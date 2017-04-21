require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup 
    @guest1 = Guest.new("Johnny", 200, "Livin on a prayer")

  end 

  def test_get_name
    assert_equal("Johnny", @guest1.name)
  end 

  def test_get_current_balance
    assert_equal(200, @guest1.balance)
  end 

  def test_get_favourite_song
    assert_equal("Livin on a prayer", @guest1.fav_song)
  end

  def test_guest_can_afford_set_value
    assert_equal(true, @guest1.can_guest_afford(5))
  end 
  def test_guest_cannot_afford_set_value
    assert_equal(false, @guest1.can_guest_afford(500))
  end 
end 
