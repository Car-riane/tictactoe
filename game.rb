require_relative './board'
require_relative './player'
class Game
  def initialize
    puts "Welcome to tic tac toe!"
    @board = Board.new
    
    puts "Enter a name for Player X"
    name1 = gets.chomp
    @player1 = Player.new(name1, "X")

    puts "Enter a name for Player O"
    name2 = gets.chomp 
    @player2 = Player.new(name2, "O")

    @current_player = @player1
  end

  def play 
    loop do 
      turn 
      break if game_over?
      switch_player
    end
  end 

  def turn
    @board.display
    move = @current_player.get_move(@board)
    @board.update(move, @current_player.symbol)
  end 

  def switch_player
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end 

  def game_over?
    if @board.winning_combination?
      @board.display
      puts "#{@current_player.name} (#{@current_player.symbol}) wins!"
      true
    elsif @board.full
      @board.display
      puts "It's a draw!"
      true
    else
      false
    end
  end
end


Game.new.play