class Guest

  attr_reader :name, :favourite_song, :favourite_artist

  def initialize(name, favourite_song, favourite_artist)
    @name = name
    @favourite_song = favourite_song
    @favourite_artist = favourite_artist
  end

end
