class Guest

  attr_reader :name, :wallet, :favourite_song, :favourite_artist

  def initialize(name, wallet, favourite_song, favourite_artist)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
    @favourite_artist = favourite_artist
  end

  def fav_song_on_playlist
    for songs in @room_playlist
      if song[:title] == @favourite_song
        return "Whoo!"
      end
    end
  end
end
