require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../songs.rb')
require_relative ('../guest.rb')
require_relative ('../room.rb')

class RoomTest < MiniTest::Test
  def setup

    @room1 = Room.new("Disco Room")

  end

  def test_room_has_name
    assert_equal("Disco Room", @room1.room_name)
  end


end
