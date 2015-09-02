#define a sample hash

#soft = {dealer => {player => "action"}}
puts "Play some blackjack! Enter your two cards, and the dealer's card."
puts "For face cards, please enter 10"
puts "For ace, please enter A"
puts "First card: "
first = gets.chomp.to_i
puts "#{first}"

puts "Second card: "
second = gets.chomp.to_i
puts "#{second}"
player_hand = first + second
puts "Your hand is #{player_hand}"



blackjack = Hash.new


blackjack = {"soft" => {4 => {19 => "Stand"}}}


puts blackjack["soft"][4][19]
