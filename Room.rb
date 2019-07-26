class Room

  attr_reader :name

  def initialize(name)
    @name = name
    @guests = []
  end

end
