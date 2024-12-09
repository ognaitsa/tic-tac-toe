# frozen_string_literal: true

# game board
class Game
  def initialize
    # initialize array for moves
    puts 'Game starts!'
    puts
    @board = Array.new(3) { Array.new(3, '-') }
    draw_board
    move_check
  end

  def draw_board
    # display board
    @board.each do |row|
      puts row.join('  ')
      puts
    end
  end

  def move_check(player_turn)
    # check who's turn it is or if the last move was valid
    puts "#{player_turn} select your next move."
  end

  def check_winner
    # check if winning conditions are met
  end
end
