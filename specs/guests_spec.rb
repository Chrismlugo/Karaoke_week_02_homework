require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../songs.rb')
require_relative ('../guest.rb')
require_relative ('../room.rb')

class GuestTest < MiniTest::Test

def setup
  @guest1 = Guest.new("Ben", 100.00, "Bicycle Race", "Queen")
  @guest2 = Guest.new("Grace", 60.00, "Don't you(forget about me)", "Simple Minds")
  @guest3 = Guest.new("Jeff", 40.00, "Up around the bend", "Creedence Clearwater Revival")
  @guest4 = Guest.new("Brenda", 55.00, "Fortunate Son", "Creedence Clearwater Revival")
end

def test_guest_has_name
  assert_equal("Ben", @guest1.name)
end

def test_guest_has_favourite_artist
  assert_equal("Queen", @guest1.favourite_artist)
end

def test_guest_has_favourite_song
  assert_equal("Bicycle Race", @guest1.favourite_song)
end

def test_guest_has_money
  assert_equal(40.00, @guest3.wallet)
end

end
