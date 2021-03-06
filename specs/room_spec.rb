require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')
class TestRoom < MiniTest::Test
  
  def setup 
  @room1 = Room.new("Rock Room", 50)
  @room2 = Room.new("Rock Room", 50)
  @room3 = Room.new("Ballad Lounge", 1)
  @room4 = Room.new("Classic Town", 1)
  @room5 = Room.new("Ballad Lounge", 2)
  @guest1 = Guest.new("Johnny", 200, "Livin on a prayer")
  @guest2 = Guest.new("Susan", 60, "I don't want to close my eyes")
  @guest3 = Guest.new("Dave", 50, "Don't stop believin")
  @guest4 = Guest.new("Dannielle", 100, "Don't stop believin")
  @song1 = Song.new("Bon Jovi", "Livin on a prayer")
  @song2 = Song.new("Journey", "Don't stop believin")
  @room2.check_guest_in(@guest1)
  @room2.add_guest_to_waiting_list(@guest1)
  @room3.add_song(@song1)
  @room3.check_guest_in(@guest1)
  @room4.add_guest_to_waiting_list(@guest1)
  @room4.add_guest_to_waiting_list(@guest2)
  @room4.check_guest_in(@guest3)
  @room5.check_guest_in(@guest3)
  @room5.check_guest_in(@guest4)
  @room5.add_song(@song2)
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

  def test_can_remove_song_by_artist
   @room3.remove_song_by_artist("Bon Jovi")
   assert_equal(0, @room3.playlist.count)
  end 

  def test_can_remove_song_by_title
   @room3.remove_song_by_title("Livin on a prayer")
   assert_equal(0, @room3.playlist.count)
  end  

  def test_check_space
    refute(@room2.no_space_left?)
  end 

  def test_no_space
    assert(@room3.no_space_left?)
  end 
  
  def waiting_list_empty
    assert_equal(0, @room1.waiting_list.count)
  end 

  def test_add_guest_to_waiting_list
    @room1.add_guest_to_waiting_list(@guest1)
    assert_equal(1, @room1.waiting_list.count)
  end

  def test_remove_guest_from_waiting_list
   @room2.remove_guest_from_waiting_list_by_name("Johnny")
   assert_equal(0, @room2.waiting_list.count)
  end 

  def test_remove_first_guest_in_list_and_add_to_guest_array
    @room4.remove_first_guest_in_line_add_to_room
    assert_equal(1, @room4.waiting_list.count)
    assert_equal(2, @room4.guest_array.count)
  end

def test_current_song
  
  assert_equal("Don't stop believin", @room5.playlist[0].title)
end


  def test_whooo_for_every_person_in_room_with_favourite_song_playing_in_given_room
     
    assert_equal("Dave: WHOOOO!, Dannielle: WHOOOO!", @room5.whooo_if_favourite_song_playing)
  end

end
