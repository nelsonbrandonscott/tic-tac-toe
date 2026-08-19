require_relative 'grid'
require_relative 'player'

class Game
  def initialize (name1, name2)
    @player1 = Player.new(name1, 'X')
    @player2 = Player.new(name2, 'O')
    @grid = Grid.new
    @player1.turn = true
    @players = [@player1, @player2]
  end

  attr_accessor :grid

  def turn
    @players.each do |player|
      if player.turn
        puts player.name + "'s turn. Enter 1 thru 9 to choose a square for " + player.symbol
        @grid.choose(player.symbol)
        @grid.show
        player.turn = false
      else
        player.turn = true
      end  
    end  
  end  

end

