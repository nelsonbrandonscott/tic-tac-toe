WIN_PATTERNS = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]

class Grid
  def initialize
    @layout = ['O'] #setting 0-index to O to make checking for a tie work more simply
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

  def win_check
    WIN_PATTERNS.each do |pos|
      if @layout[pos[0]] == @layout[pos[1]] && @layout[pos[0]] == @layout[pos[2]]
        return @layout[pos[0]]
      end 
    end
    @layout.all? { |mark| mark == 'X' || mark == 'O' } 
  end

  def choose (symbol)
    options = @layout.select { |mark| mark != 'X' && mark != 'O' }
    choice = gets.chomp
    until options.any?(choice)
      puts "Invalid choice, please enter 1-9 of an unclaimed space."
      choice = gets.chomp
    end  
    @layout[choice.to_i] = symbol
  end  

end

