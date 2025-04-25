# frozen_string_literal: true

require './lib/game/'
require './lib/player/'
require './lib/cell/'

# board class for playing
class Board
  def initialize
    @board = ['', '', '', '', '', '', '', '', '']
    draw_board
  end

  def draw_board
    # display board
    puts 'Game starts!'
    puts ' '
    puts " #{@board[0]}1 | #{@board[1]}2 | #{@board[2]}3 "
    puts '-----------'
    puts " #{@board[3]}4 | #{@board[4]}5 | #{@board[5]}6 "
    puts '-----------'
    puts " #{@board[6]}7 | #{@board[7]}8 | #{@board[8]}9 "
    puts ' '
  end

  def update_board
    draw_board
  end
end
