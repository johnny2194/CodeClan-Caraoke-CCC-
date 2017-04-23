class Room

  attr_reader :name, :max_limit, :guest_array, :playlist, :waiting_list
  def initialize(name, max_limit)
    @name = name 
    @max_limit = max_limit
    @guest_array = []
    @playlist = []
    @waiting_list = []

  end 


  def check_guest_in(guest)
    @guest_array <<  guest
  end 

  def check_guest_out_by_name(guest_name)
    guest_to_check_out = @guest_array.find(){|guest| guest_name == guest.name }
    @guest_array.delete(guest_to_check_out) 
  end

  def check_guest_out_by_song(guest_fav_song)
    guest_to_check_out = @guest_array.find(){|guest| guest_fav_song == guest.fav_song}
    @guest_array.delete(guest_to_check_out)
  end 

  def add_song(song)
    @playlist << song
  end 

  def remove_song_by_artist(song_artist)
    song_to_remove = @playlist.find(){|song| song_artist == song.artist}
    @playlist.delete(song_to_remove)
  end 


  def remove_song_by_title(song_title)
    song_to_remove = @playlist.find(){|song| song_title == song.title}
    @playlist.delete(song_to_remove)
  end 

  def space_left?
    return @max_limit == guest_array.count
  end 

  def add_guest_to_waiting_list(guest)
    @waiting_list <<  guest
  end 

  def remove_guest_from_waiting_list_by_name(guest_name)
    guest_to_remove = @waiting_list.find(){|guest| guest_name == guest.name }
    @waiting_list.delete(guest_to_remove) 
  end

  def remove_first_guest_in_line_add_to_room
   @guest_array.push @waiting_list.delete_at(0)
  end 

end