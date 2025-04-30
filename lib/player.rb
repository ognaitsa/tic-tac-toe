# frozen_string_literal: true

require './lib/board/'
require './lib/cell/'

# player class
class Player
  attr_accessor :name, :symbol, :move

  # Player gets  initialized with name and symbol
  def initialize(name, symbol, move)
    # get name and get symbol
    @name = name
    @symbol = symbol
    @move = move
    player_name
    puts
    player_symbol
    puts
    # confirm player creation
    puts "Player #{self.name} has joined the game with the '#{self.symbol}' symbol."
    puts ' '
  end

  def player_name
    puts 'What is your name?'
    self.name = gets.chomp.capitalize!
    while @name.to_s.empty? || @name =~ /\A\s*\z/
      puts 'Please enter a valid name.'
      player_name
    end
  end

  def player_symbol
    puts 'What is your symbol?'
    self.symbol = gets.chomp.capitalize!
    while @symbol.to_s.empty? || @symbol =~ /\A\s*\z/
      puts 'Please enter a valid symbol.'
      player_symbol
    end
  end

  def player_move
    puts 'Select your move.'
    self.move = gets.chomp.to_i
    while move > 9 || move < 1
      puts 'Select a valid number.'
      self.player_move
    end
  end


end
