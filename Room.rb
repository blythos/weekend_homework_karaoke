class Room

  attr_reader :name, :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @guests = []
    @songs = []
  end

  def guests_amount()
    return @guests.size
  end

  def add_guest(guest)
    @guests << guest
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def songs_amount()
    return @songs.size
  end

  def add_song(song)
    @songs << song
  end

end
