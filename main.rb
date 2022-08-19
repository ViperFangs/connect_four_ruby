def create_user(number)
  puts "Player #{number}, enter your details"
  print "\tName: "
  name = gets.chomp
  print "\tSymbol: "
  symbol = gets.chomp
  Player.new(name, symbol)
end