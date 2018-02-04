require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../songs.rb')
require_relative ('../guest.rb')
require_relative ('../room.rb')

class SongTest < MiniTest::Test

def setup
  @song1 = Song.new("Tiny Dancer")
  @song2 = Song.new("Shook me all night long")
  @song3 = Song.new("Take on me")
  @song4 = Song.new("He's the greatest dancer")
  @song5 = Song.new("Dancing in the moonlight")
end

def test_song_has_title
  assert_equal("Tiny Dancer", @song1.title)
end


end
