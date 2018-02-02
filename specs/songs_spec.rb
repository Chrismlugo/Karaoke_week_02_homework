require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../songs.rb')
require_relative ('../guest.rb')
require_relative ('../room.rb')

class SongTest < MiniTest::Test

def setup
  @song = Song.new("Tiny Dancer", "Elton John", "Ballads")
end

def test_song_has_title
  assert_equal("Tiny Dancer", @song.title)
end

def test_song_has_artist
  assert_equal("Elton John", @song.artist)
end
end
