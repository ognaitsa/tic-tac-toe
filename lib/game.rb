# frozen_string_literal: true

require './lib/player/'
require './lib/board/'
require './lib/cell/'

# game board
class Game
  attr_accessor :board, :cell, :symbol, :move

  def initialize
    # initialize players and arrays for board
    @player1 = Player.new('', '', '')
    @player2 = Player.new('', '', '')
    @new_game = Board.new
    @current_player = @player1
    play
  end

  def location_check
    #     if @board[move].empty?
    #       @board[move] = symbol
    #       check_winner
    #       update_board
    #     else
    #       puts 'Select another place'
    #       @current_player.player_move
    #     end
    #   end
  end

  def check_winner\
    # codecode
  end

  def play # rubocop:disable Metrics/MethodLength
    number_of_turns = 1
    while number_of_turns < 10
      if number_of_turns.odd?
        puts 'Player 1 turn'
        @player1.player_move
        # location_check(move)
        number_of_turns += 1
      else
        puts 'Player 2 turn'
        @player2.player_move
        # location_check(@move)
        number_of_turns += 1
      end
    end
  end
end
