class Room

  attr_reader :name

  def initialize(name)
    @name = name
    @guests = []
  end

  def guests_amount()
    return @guests.length
  end

  def add_guest(guest)
    @guests << guest
  end 

end
