Venue
----------
# Name - string
# Max_limit - string
# Admission Fee - integer


Room < Venue
----------
Name - string
Max limit - integer
guests - array
wait_list - array
check_in()
check_out()
max_limit()
wait_list()
add_guest_to_waitlist
one_in_one_out()
----------
add_songs()




Song 

----------
Artist - String
Title - String



Guest 

-----------
# Name - String
# Balance - Integer
# Favourite Song - string  
-----------
 # The OO CodeClan Caraoke (CCC)

 # You have been approached to build software for a Karaoke bar. Specifically, they want you to build a software for checking guests in and out, plus handling songs.

 # Your program should be test driven and should be able to:

 # Create rooms, songs and guests
 # Check in guests to rooms/Check out guests from rooms
 # Add songs to rooms


 # Extensions

 # What happens if there are more guests trying to be checked in than there is free space in the room?
 # Karaoke venues usually have an entry fee - So the guests could have money so they can pay it.
 # Write a Runner class, so that your Karaoke app can be run in Terminal.
 # Advanced extensions

 # Guests could have a favourite song, and if their favourite song is on the room's playlist, they can cheer loudly! (return a string like "Whoo!")
 # Rooms can keep track of the entry fees/spending of the guests - maybe add a bar tab/bar class?
 # Add anything extra you think would be good to have at a karaoke venue!





 if max_limit - room1_guest_array == 0 
  wait_list_array << guest 
else room1_guest_array << guest
end  



