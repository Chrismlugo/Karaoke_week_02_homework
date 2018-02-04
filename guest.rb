class Guest

  attr_reader :name, :wallet, :favourite_song, :favourite_artist

  def initialize(name, wallet, favourite_song, favourite_artist)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
    @favourite_artist = favourite_artist
  end

end
