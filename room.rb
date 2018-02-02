class Room

  attr_reader :name


  def initialize(name)
  @name = name
  @guests_in_room = []
  @room_playlist = []
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




end
