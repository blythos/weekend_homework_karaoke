class Room

  attr_reader :name, :capacity

  def initialize(name, capacity, fee)
    @name = name
    @capacity = capacity # Assuming that there will be rooms for bigger parties etc.
    @fee = fee # Assuming that different sizes of room will have different prices.
    @guests = []
    @playlist = []
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

  def playlist_size()
    return @playlist.size
  end

  def add_song(song)
    @playlist << song
  end

  def check_in()
    if @guests.size <= @capacity
      return true
    else
      return false
    end
  end

  def pay_entry_fee(guest)
    if guest.cash >= @fee && check_in() == true
      guest.remove_cash(@fee)
      return true
    else
      return false
    end
  end

  def search_by_artist(searched_artist) # Not necessary for the task but I felt like coding it up in case I wanted to allow Guests to have favourite artists as well.
    return @playlist.select { |song| song.artist == searched_artist }
  end

  def search_by_title(searched_title)
    return @playlist.select { | song| song.title == searched_title }
  end
end
