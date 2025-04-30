# frozen_string_literal: true

require './lib/player/'
require './lib/board/'
require './lib/cell/'

# game board
class Game

  WINNING_CONDITIONS = []

  attr_accessor :board, :cell, :symbol, :move

  def initialize
    # initialize players and array for board
    # set current player to player 1
    @player1 = Player.new('', '', '')
    @player2 = Player.new('', '', '')
    @board = Board.new
    @current_player = @player1
    puts 'Game starts!'
    play
  end

  def check_winner
    # codecode
  end

  def play # rubocop:disable Metrics/MethodLength
    number_of_turns = 1
    while number_of_turns < 10
      if number_of_turns.odd?
        puts 'Player 1 turn'
        @current_player.player_move
        location_check
        @current_player = @player2
        number_of_turns += 1
      else
        puts 'Player 2 turn'
        @current_player.player_move
        location_check
        @current_player = @player1
        number_of_turns += 1
      end
    end
  end

  def location_check(board=@board, symbol=@current_player.move)
      puts @board
    # if board[@current_player.move].empty? || @board[@current_player.move].nil?
    #   @board[move] = symbol
    #   check_winner
    #   update_board
    # else
    #   puts 'Select another place'
    #   @current_player.player_move
    # end
  end


end
