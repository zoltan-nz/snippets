class Cell

  def initialize
    @counter = 0
  end

  def dead?
    @counter < 2 || @counter > 3
  end

  def +(cell)
    @counter += 1
    self
  end
end


class World

end