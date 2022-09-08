# Player stores all related data to player like name and symbol
class Player
  attr_reader :name, :symbol

  def initialize(name:, symbol:)
    @name = name || ''
    @symbol = symbol || ''
  end

  def self.create_player
    puts 'Enter a player name: '
    name = gets.chomp
    puts "\nEnter your symbol, #{name}: "
    symbol = gets.chomp

    new(name: name, symbol: symbol)
  end
end
