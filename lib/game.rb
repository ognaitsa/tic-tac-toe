# frozen_string_literal: true

# game board
class Game
  def initialize
    # initialize array for moves
    puts 'Game starts!'
    puts
    @board = Array.new(3) { Array.new(3, '-') }
    draw_board
    check_move
  end

  def draw_board
    # display board
    @board.each do |row|
      puts row.join('  ')
      puts
    end
  end

  def check_move
    # check who's turn it is or if the last move was valid
    # check if move completes winning combination
    # code code code
  end
end
