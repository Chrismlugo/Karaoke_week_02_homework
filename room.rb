class Room

  attr_reader :name


  def initialize(name)
  @name = name
  @guests_in_room = []
  end

def count_room
return  @guests_in_room.count
end


end
