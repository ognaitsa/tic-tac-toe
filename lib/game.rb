# frozen_string_literal: true

require './lib/player'

# game board
class Game
  def initialize
    # initialize array for moves
    @player1 = Player.new
    @player2 = Player.new
    puts '        Game starts!'
    puts '---------------------------'
    puts ' '
    draw_board
    play
  end

  def draw_board
    # display board
    @board = Array.new(3) { Array.new(3, '-') }
    @board.each do |row|
      puts row.join('  ')
      puts
    end
  end

  def location_check
    # puts 'Select another square' while Player.make_move.empty? == true
  end

  def chek_winner
    # check for winner
  end

  def update_board
    # update
  end

  def play
    number_of_turns = 1
    while number_of_turns < 10
      if number_of_turns.odd?
        @player1.move_selection.selection_check
      else
        @player2.move_selection
      end
      number_of_turns += 1
    end
  end
end
