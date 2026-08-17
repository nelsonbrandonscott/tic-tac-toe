WIN_PATTERNS = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]

class Grid
  def initialize
    @layout = [0]
    (1..9).each do |i|
      @layout[i] = (i).to_s
    end  
  end
  
  def show
    puts @layout[1] + ' | ' + @layout [2] + ' | ' + @layout [3]
    puts '---------'
    puts @layout[4] + ' | ' + @layout [5] + ' | ' + @layout [6]
    puts '---------'
    puts @layout[7] + ' | ' + @layout [8] + ' | ' + @layout [9]
  end

  def square(symbol, pos)
    @layout[pos] = symbol
  end  

  def win_check
    WIN_PATTERNS.each do |pos|
      if @layout[pos[0]] == @layout[pos[1]] && @layout[pos[0]] == @layout[pos[2]]
        return @layout[pos[0]]
      end 
    end
    false 
  end

end

x = Grid.new
x.square("X", 5)
x.show
puts x.win_check
x.square("X", 1)
x.square("X", 9)
puts x.win_check


     