class Guest

  attr_reader :name, :balance, :fav_song
  def initialize(name, balance, fav_song)
    @name = name 
    @balance = balance
    @fav_song = fav_song
  end 

  def can_guest_afford(value)
    if @balance - value >= 0
      return true
    else 
      return false
    end
  end
end