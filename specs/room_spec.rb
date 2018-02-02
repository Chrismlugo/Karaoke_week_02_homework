require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../guest.rb')
require_relative ('../songs.rb')
require_relative ('../room.rb')

class RoomTest < MiniTest::Test
  def setup

    @room1 = Room.new("Disco Room",[], [], 10)
    @room2 = Room.new("Room of Rock",[], [], 8)
    @room3 = Room.new("Ballads Ballroom",[], [], 10)
    @room4 = Room.new("Party palace",[], [], 20)


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
    song = Song.new("You've got a friend in me", "Randy Newman", "Toy Story" )
    @room1.add_song(song)
    assert_equal(1, @room1.count_playlist)
  end

  def test_is_room_at_capacity
    guest1 = Guest.new("Ben", "Dancing in the moonlight", "Thin Lizzy")
    guest2 = Guest.new("Sven", "Dancing in the moonlight", "Thin Lizzy")
    guest3 = Guest.new("Sven", "Dancing in the moonlight", "Thin Lizzy")
    guest4 = Guest.new("Sven", "Dancing in the moonlight", "Thin Lizzy")
    guest5 = Guest.new("Sven", "Dancing in the moonlight", "Thin Lizzy")
    guest6 = Guest.new("Sven", "Dancing in the moonlight", "Thin Lizzy")
    guest7 = Guest.new("Sven", "Dancing in the moonlight", "Thin Lizzy")
    guest8 = Guest.new("Sven", "Dancing in the moonlight", "Thin Lizzy")
    @room1.check_in(guest1)
    @room1.check_in(guest2)
    @room1.check_in(guest3)
    @room1.check_in(guest4)
    @room1.check_in(guest5)
    @room1.check_in(guest6)
    @room1.check_in(guest7)
    @room1.check_in(guest8)



    assert_equal("room is at capacity!", @room1.at_capacity)

  end


end
