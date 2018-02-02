require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../songs.rb')
require_relative ('../guest.rb')
require_relative ('../room.rb')

class SongTest < MiniTest::Test

def setup
  @song1 = Song.new("Tiny Dancer", "Elton John", "Ballads")
  @song2 = Song.new("Shook me all night long", "ACDC", "Rock")
  @song3 = Song.new("Take on me", "Aha", "Party")
  @song4 = Song.new("He's the greatest dancer", "Sister Sledge", "Disco")
  @song5 = Song.new("Dancing in the moonlight", "Thin Lizzy", "Rock")
end

def test_song_has_title
  assert_equal("Tiny Dancer", @song1.title)
end

def test_song_has_artist
  assert_equal("Aha", @song3.artist)
end

def test_song_has_genre
  assert_equal("Rock", @song5.genre)
end
end
