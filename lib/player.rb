# frozen_string_literal: true

require './lib/game'

# player class
class Player
  attr_accessor :name, :symbol, :move

  # Player gets  initialized with name and symbol
  def initialize
    # get name and get symbol
    player_name
    puts
    player_symbol
    puts
    # confirm player creation
    puts "Player #{name} has joined the game with the '#{symbol}' symbol"
    puts ' '
  end

  def player_name
    puts 'What is your name?'
    @name = gets.chomp.capitalize!
    while @name.to_s.empty? || @name =~ /\A\s*\z/
      puts 'Please enter a valid name'
      player_name
    end
  end

  def player_symbol
    puts 'What is your symbol?'
    @symbol = gets.chomp.capitalize!
    while @symbol.to_s.empty? || @symbol =~ /\A\s*\z/
      puts 'Please enter a valid symbol'
      player_symbol
    end
  end

  def move_selection
    puts 'Select your move.'
    @move = gets.chomp.to_i
    @column = gets.chomp.to_i
    while @row.nil?
      puts 'Select a valid number'
      move_selection
    end
  end

  def location_check
    # take player.move_selection and compare against board array
    # while the spot is a '-' allow play to take place
    # else puts 'Select another place'
    # check_winner
  end
end
