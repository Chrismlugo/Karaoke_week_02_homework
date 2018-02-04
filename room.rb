class Room

  attr_reader :entry_fee, :name, :capacity


  def initialize(entry_fee, name, capacity)
  @entry_fee = entry_fee
  @name = name
  @guests_in_room = []
  @room_playlist = []
  @capacity = capacity


  end

def count_room
return  @guests_in_room.count
end

def check_in(guest)
  @guests_in_room << guest
end

def check_out(guest)
  @guests_in_room.delete(guest)
end

def count_playlist
  return @room_playlist.count
end

def add_song(song)

  @room_playlist << song

end


def at_capacity
  if @guests_in_room.count >= capacity
    p "Room is at capacity!"
  end
end

def copy_of_room_playlist
  copy = @room_playlist
  return copy
end



end
