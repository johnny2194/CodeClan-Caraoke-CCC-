require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')
class TestRoom < MiniTest::Test
  
  def setup 
  @room1 = Room.new("Rock Room", 50)
  @guest1 = Guest.new("Johnny", 200, "Livin on a prayer")
  @room2 = Room.new("Rock Room", 50)
  @room2.check_guest_in(@guest1)
  @song1 = Song.new("Bon Jovi", "Livin on a prayer")
  
  end 

  def test_get_name
    assert_equal("Rock Room", @room1.name)
  end 

  def test_get_max_limit
    assert_equal(50, @room1.max_limit)
  end

  def test_guest_array_empty
    assert_equal(0, @room1.guest_array.count)
  end 


  def test_can_check_guest_in
    @room1.check_guest_in(@guest1)
    assert_equal(1, @room1.guest_array.count)
  end

  def test_can_check_guest_out_by_name
   @room2.check_guest_out_by_name("Johnny")
   assert_equal(0, @room2.guest_array.count)
  end 

  def test_can_check_guest_out_by_name_not_in_room
   @room2.check_guest_out_by_name("John")
   assert_equal(1, @room2.guest_array.count)
  end 

  def test_can_check_guest_out_by_favourite_song
     @room2.check_guest_out_by_song("Livin on a prayer")
     assert_equal(0, @room2.guest_array.count)
  end  

  def test_playlist_empty
    assert_equal(0, @room1.playlist.count)
  end 

  def test_add_song_to_playlist
    @room2.add_song(@song1)
    assert_equal(1, @room2.playlist.count)
  end 
end
