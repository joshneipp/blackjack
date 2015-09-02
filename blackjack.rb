#define a sample hash
#soft = {dealer => {player => "action"}}

blackjack = Hash.new
blackjack = {"soft" => {4 => {19 => "Stand"}}}

def evaluate(card)
  if card == "A"
    card = 11
  else
    card
  end
end

puts "Play some blackjack! Enter your two cards, and the dealer's card."
puts "For face cards, please enter 10"
puts "For ace, please enter A"

puts "What is your first card?"
first = gets.chomp
first_card = evaluate(first).to_i

puts "What is your second card?"
second = gets.chomp
second_card = evaluate(second).to_i

puts "What is the dealer's card?"
dealer = gets.chomp
dealer_card = evaluate(dealer).to_i

player_hand = first_card + second_card

puts "Your hand is #{player_hand} and dealer has #{dealer_card}"
puts "You should #{blackjack["soft"][dealer_card][player_hand]}"
