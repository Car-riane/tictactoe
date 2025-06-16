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
    @player2 = PLayer.new(name2, "O")

    @current_player = player1
  end

  def play 
  end 

  def turn
  end 

  def switch_player
  end 

  def game_over
  end 

  def display_winner
  end 
end


Game.new