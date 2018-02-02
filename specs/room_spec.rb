require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../guest.rb')
require_relative ('../songs.rb')
require_relative ('../room.rb')

class RoomTest < MiniTest::Test
  def setup

    @room = Room.new("Disco Room")

  end

  def test_room_has_name
    assert_equal("Disco Room", @room.name)
  end

  def test_can_count_room
    result = @room.count_room
    assert_equal(0, result)
  end

  def test_can_check_in_guest
    guest = Guest.new("Jeff", "Private Gambler", "Tina Turner")
    @room.check_in(guest)
    assert_equal(1, @room.count_room)
  end

  def test_can_check_out_guest
      guest = Guest.new("Jeff", "Private Gambler", "Tina Turner")
      @room.check_out(guest)
      assert_equal(0, @room.count_room)
  end
end
