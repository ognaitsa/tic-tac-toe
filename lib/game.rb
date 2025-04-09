# frozen_string_literal: true

require './lib/player'

# game board
class Game
  def initialize
    # initialize players and arrays for board
    @player1 = Player.new
    @player2 = Player.new
    @board = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
    puts 'Game starts!'
  end

  def draw_board # rubocop:disable Metrics/AbcSize
    # display board
    puts ' '
    puts " #{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]} "
    puts '-----------'
    puts " #{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]} "
    puts '-----------'
    puts " #{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]} "
    puts ' '
  end

  def play # rubocop:disable Metrics/MethodLength
    number_of_turns = 1
    while number_of_turns < 10
      if number_of_turns.odd?
        puts 'Player 1 turn'
        @player1.move_selection
        # check_winner
        # update_board
        number_of_turns += 1
      else
        puts 'Player 2 turn'
        @player2.move_selection
        # check_winner
        # update_board
        number_of_turns += 1
      end
    end
  end

  def check_winner
    # before board update check if last move completes any winning condition
    # update_board
  end

  def update_board
    # take player move location and update board array
    # print updated board
  end
end
