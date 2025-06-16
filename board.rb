class Board
  def initialize
    @grid = Array.new(9, " ")
  end 

  def display
    puts ""
    puts " #{@grid[0]} | #{@grid[1]} | #{@grid[2]}"
    puts "---+---+---"
    puts " #{@grid[3]} | #{@grid[4]} | #{@grid[5]}"
    puts "---+---+---"
    puts " #{@grid[6]} | #{@grid[7]} | #{@grid[8]}"
    puts ""
  end 

  def update(position, symbol)
    index = position.to_i - 1
    @grid[index] = symbol
  end

  def valid_move?(position)
    index = position.to_i - 1
    index.between?(0, 8) && @grid[index] == " "
  end
  
  def winning_combination?
    win_indices = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ]

    win_indices.any? do |combo|
      a, b, c = combo
      [@grid[a], @grid[b], @grid[c]].uniq.length == 1 && @grid[a] != " "
    end 
  end 

  def full
    !@grid.include?(" ")
  end 

  def reset 
    @grid = Array.new(9, " ")
  end 
end


if __FILE__ == $0
  board = Board.new
  board.update(1, "X")
  board.update(2, "O")
  board.display

  puts "Resetting board..."
  board.reset
  board.display
end