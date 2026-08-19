require_relative 'lib/game'


game = Game.new('Alice', 'Bob')
game.grid.show
until game.grid.win_check do
  game.turn
end

if ['X', 'O'].include? game.grid.win_check
  puts game.grid.win_check + ' wins!'
else
  puts 'Tie game!'
end  