class Room

  attr_reader :name, :max_limit, :guest_array, :playlist
  def initialize(name, max_limit)
    @name = name 
    @max_limit = max_limit
    @guest_array = []
    @playlist = []

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
end