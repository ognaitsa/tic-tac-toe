# frozen_string_literal: true

require './lib/game/'
require './lib/player/'
require './lib/cell/'

# board class for playing
class Board
  def initialize
    @board = ['1', '2', '3', '4', '5', '6', '7', '8', '9']
    draw_board
  end

  def draw_board
    # display board
    puts ' '
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts '-----------'
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts '-----------'
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    puts ' '
  end

  def update_board
    draw_board
  end
end
