class Room

  attr_reader :name

  def initialize(name)
    @name = name
    @guests = []
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

end
