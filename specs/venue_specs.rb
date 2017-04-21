require('minitest/autorun')
require('minitest/rg')
require_relative('../venue.rb')

class TestVenue < MiniTest::Test
  
  def setup 
  @venue = Venue.new("Dancing Davies Caraoke Bar", 5, 190)

  end 

  def test_get_name
    assert_equal("Dancing Davies Caraoke Bar", @venue.name)
  end 

  def test_get_admission_fee
    assert_equal(5, @venue.admission_fee)
  end 

  def test_get_max_limit
    assert_equal(190, @venue.max_limit)
  end

end