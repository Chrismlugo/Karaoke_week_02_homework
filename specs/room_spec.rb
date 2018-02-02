require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../songs.rb')
require_relative ('../guest.rb')
require_relative ('../room.rb')

class RoomTest < MiniTest::Test
  def setup

    @room1 = Room.new("Disco Room")
    @room2 = Room.new("Room of Rock")
    @room3 = Room.new("Ballads Ballroom")

  end

  def test_room_has_name
    assert_equal("Disco Room", @room1.room_name)
  end

  def test_room_also_has_name
    assert_equal("Ballads Ballroom", @room3.room_name)

  end
end
