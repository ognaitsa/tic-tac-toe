# frozen_string_literal: true

# player class
class Player
  # attr accesor
  attr_accessor :name, :symbol

  # Player gets  initialized with name and symbol
  def initialize
    # get name
    player_name
    # get symbol
    player_symbol
    # confirm player creation
    puts "#{name} has joined the game with the '#{symbol}' symbol"
  end

  def player_name
    puts 'What is your name?'
    self.name = gets.chomp.capitalize
    while name.to_s.empty? || name =~ /\A\s*\z/
      puts 'Please enter a valid name'
      self.name = gets.chomp.capitalize
    end
  end

  def player_symbol
    puts 'What is your symbol?'
    self.symbol = gets.chomp.capitalize
    while symbol.to_s.empty? || symbol =~ /\A\s*\z/
      puts 'Please enter a valid symbol'
      self.symbol = gets.chomp.capitalize
    end
  end
end
