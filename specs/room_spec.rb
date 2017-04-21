require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')

class TestRoom < MiniTest::Test
  
  def setup 
  @room1 = Room.new("Rock Room", 50)
  end 

  def test_get_name
    assert_equal("Rock Room", @room1.name)
  end 

  def test_get_max_limit
    assert_equal(50, @room1.max_limit)
  end

end