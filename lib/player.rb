# frozen_string_literal: true

# player class
class Player
  # attr accesor
  attr_accessor :name, :symbol

  # Player gets  initialized with name and symbol
  def initialize # rubocop:disable Metrics/AbcSize
    # get name
    puts 'What is your name?'
    self.name = gets.chomp
    puts 'Please enter a valid symbol' if name.to_s.empty? || name =~ /\A\s*\z/
    # get symbol
    puts 'What is your symbol?'
    self.symbol = gets.chomp
    puts 'Please enter a valid symbol' if symbol.to_s.empty? || symbol =~ /\A\s*\z/
    # confirm player creation
    puts "#{name} has joined the game with the '#{symbol}' symbol"
  end
end
