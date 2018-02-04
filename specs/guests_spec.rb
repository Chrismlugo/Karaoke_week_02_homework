require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../songs.rb')
require_relative ('../guest.rb')
require_relative ('../room.rb')

class GuestTest < MiniTest::Test

def setup
  @guest1 = Guest.new("Ben", 40.00 "Bicycle Race", "Queen")
  @guest2 = Guest.new("John", 40.00 "", "Queen")
  @guest3 = Guest.new("Ben", 40.00 "Bicycle Race", "Queen")
  @guest4 = Guest.new("Ben", 40.00 "Bicycle Race", "Queen")
end

def test_guest_has_name
  assert_equal("Ben", @guest.name)
end

def test_guest_has_favourite_artist
  assert_equal("Queen", @guest.favourite_artist)
end

def test_guest_has_favourite_song
  assert_equal("Bicycle Race", @guest.favourite_song)
end
end
