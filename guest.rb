class Guest

  attr_reader :guest, :favourite_song, :favourite_artist

  def initialize(guest, favourite_song, favourite_artist)
    @guest = guest
    @favourite_song = favourite_song
    @favourite_artist = favourite_artist
  end

end
