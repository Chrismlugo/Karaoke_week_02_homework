require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../guest.rb')
require_relative ('../songs.rb')
require_relative ('../room.rb')

class RoomTest < MiniTest::Test
  def setup

    @room1 = Room.new(12.00,"Disco Room",[], [], 10)
    @room2 = Room.new(10.00,"Room of Rock",[], [], 8)
    @room3 = Room.new(12.00, "Ballads Ballroom",[], [], 10)
    @room4 = Room.new(20.00, "80's Party palace",[], [], 20)


  end

  def test_room_has_an_entry_fee
    assert_equal(12.00, @room3.entry_fee)
  end

  def test_room_has_name
    assert_equal("Disco Room", @room1.name)
  end

  def test_can_count_room
    result = @room1.count_room
    assert_equal(0, result)
  end

  def test_can_check_in_guest
    guest = Guest.new("Jeff", 40.00, "Private Gambler", "Tina Turner")
    @room2.check_in(guest)
    assert_equal(1, @room2.count_room)
  end

  def test_can_check_out_guest
      guest = Guest.new("Jeff", 40.00, "Private Gambler", "Tina Turner")
      @room1.check_in(guest)


      @room1.check_out(guest)
      assert_equal(0, @room1.count_room)
  end

  def test_can_count_playlist_array
    result = @room1.count_playlist
    assert_equal(0, result)
  end

  def test_add_song_to_room_playlist
    song = Song.new("You've got a friend in me", "Randy Newman", "" )
    @room1.add_song(song)
    assert_equal(1, @room1.count_playlist)
  end

  def test_is_room_at_capacity
    guest1 = Guest.new("Ben", 40.00,"Dancing in the moonlight", "Thin Lizzy")
    guest2 = Guest.new("Sven",40.00, "Dancing in the moonlight", "Thin Lizzy")
    guest3 = Guest.new("Sven",40.00, "Dancing in the moonlight", "Thin Lizzy")
    guest4 = Guest.new("Sven",40.00, "Dancing in the moonlight", "Thin Lizzy")
    guest5 = Guest.new("Sven", 40.00,"Dancing in the moonlight", "Thin Lizzy")
    guest6 = Guest.new("Sven", 40.00,"Dancing in the moonlight", "Thin Lizzy")
    guest7 = Guest.new("Sven", 40.00,"Dancing in the moonlight", "Thin Lizzy")
    guest8 = Guest.new("Sven", 40.00,"Dancing in the moonlight", "Thin Lizzy")
    guest9 = Guest.new("Sven", 40.00,"Dancing in the moonlight", "Thin Lizzy")
    guest10 = Guest.new("Sven", 40.00,"Dancing in the moonlight", "Thin Lizzy")
    @room3.check_in(guest1)
    @room3.check_in(guest2)
    @room3.check_in(guest3)
    @room3.check_in(guest4)
    @room3.check_in(guest5)
    @room3.check_in(guest6)
    @room3.check_in(guest7)
    @room3.check_in(guest8)
    @room3.check_in(guest9)
    @room3.check_in(guest10)



    assert_equal("Room is at capacity!", @room3.at_capacity)

  end

  def test_guest_can_pay_entry_fee
    guest1 = Guest.new("Ben", 40.00,"Dancing in the moonlight", "Thin Lizzy")
  @room2.check_in(guest1)
  wallet = guest1.wallet
  entry_fee = @room2.entry_fee

  result = wallet - entry_fee

  assert_equal(30.0, result)

  end


end
