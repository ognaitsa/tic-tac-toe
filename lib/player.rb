# frozen_string_literal: true

# player class
class Player
  # attr accesor
  attr_accessor :name, :symbol

  # Player gets  initialized with name and symbol
  def initialize # rubocop:disable Metrics/AbcSize,Metrics/MethodLength
    # get name
    puts 'What is your name?'
    self.name = gets.chomp
    while name.to_s.empty? || name =~ /\A\s*\z/
      puts 'Please enter a valid name'
      self.name = gets.chomp
    end
    # get symbol
    puts 'What is your symbol?'
    self.symbol = gets.chomp
    while symbol.to_s.empty? || symbol =~ /\A\s*\z/
      puts 'Please enter a valid symbol'
      self.symbol = gets.chomp
    end
    # confirm player creation
    puts "#{name} has joined the game with the '#{symbol}' symbol"
  end
end
