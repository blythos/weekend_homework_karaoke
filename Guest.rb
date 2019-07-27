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
    song_list = room.search_by_title(@fav_song)
    if song_list.include? @fav_song = true
      return "Yay! My fave!"
    else
      return "Meh."
    end
  end

end
