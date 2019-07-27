class Guest

  attr_reader :name, :cash

  def initialize(name, cash, fav_song)
    @name = name
    @cash = cash
    @fav_song = fav_song
  end

  def remove_cash(amount)
    @cash -= amount
  end

  def fav_song(room)
    for song in room.playlist
      if song.title == @fav_song
        return "Yay! My fave!"
      end
    end
  end

end
