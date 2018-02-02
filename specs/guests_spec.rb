require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../songs.rb')
require_relative ('../guest.rb')
require_relative ('../room.rb')

class GuestTest < MiniTest::Test

def setup
  @guest = Guest.new("Ben", "Bicycle Race", "Queen")
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
