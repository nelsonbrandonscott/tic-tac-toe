class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @turn = false
  end

  attr_reader :symbol, :name
  attr_accessor :turn
  
end