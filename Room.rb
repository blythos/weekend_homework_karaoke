class Room

  attr_reader :name, :capacity

  def initialize(name, capacity, fee)
    @name = name
    @capacity = capacity
    @fee = fee
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
end
