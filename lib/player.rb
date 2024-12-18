# frozen_string_literal: true

require './lib/game'

# player class
class Player
  # attr accesor

  # Player gets  initialized with name and symbol
  def initialize
    # get name and get symbol
    player_name
    puts ' '
    player_symbol
    puts ' '
    # confirm player creation
    puts "#{@name} has joined the game with the '#{@symbol}' symbol"
    puts ' '
  end

  def player_name
    puts 'What is your name?'
    @name = gets.chomp.capitalize!
    while @name.to_s.empty? || @name =~ /\A\s*\z/
      puts 'Please enter a valid name'
      @name = gets.chomp.capitalize!
    end
  end

  def player_symbol
    puts 'What is your symbol?'
    @symbol = gets.chomp.capitalize!
    while @symbol.to_s.empty? || @symbol =~ /\A\s*\z/
      puts 'Please enter a valid symbol'
      @symbol = gets.chomp.capitalize!
    end
  end

  def move_selection
    puts 'Select a row and then a column.'
    @row, @column = gets.chomp.to_i
  end

  def selection_check
    while @row.zero? || @column.zero?
      puts 'Select a valid number'
      puts ''
      move_selection
    end
  end
end
