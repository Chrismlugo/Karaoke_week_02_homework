require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../guest.rb')
require_relative ('../songs.rb')
require_relative ('../room.rb')

class RoomTest < MiniTest::Test
  def setup

    @room1 = Room.new("Disco Room",[], [])
    @room2 = Room.new("Room of Rock",[], [])
    @room3 = Room.new("Ballads Ballroom",[], [])
    @room4 = Room.new("Party palace",[], [])


  end

  def test_room_has_name
    assert_equal("Disco Room", @room1.name)
  end

  def test_can_count_room
    result = @room1.count_room
    assert_equal(0, result)
  end

  def test_can_check_in_guest
    guest = Guest.new("Jeff", "Private Gambler", "Tina Turner")
    @room2.check_in(guest)
    assert_equal(1, @room2.count_room)
  end

  def test_can_check_out_guest
      guest = Guest.new("Jeff", "Private Gambler", "Tina Turner")
      @room1.check_out(guest)
      assert_equal(0, @room1.count_room)
  end

  def test_can_count_playlist_array
    result = @room1.count_playlist
    assert_equal(0, result)
  end

  def test_add_song_to_room_playlist
    song = Song.new("You've got a friend in me", "Randy Newman" )
    @room1.add_song(song)
    assert_equal(1, @room1.count_playlist)
  end
end
