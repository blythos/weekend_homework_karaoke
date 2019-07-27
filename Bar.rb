class Bar

  attr_accessor :bar_tab

  def initialize()
    @bar_tab = 0
  end

  def add_to_tab(guest, amount)
    if amount <= guest.cash
      @bar_tab += amount
      guest.remove_cash(amount)
    end
  end


end
