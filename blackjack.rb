#[2,3,4,5,6].each do |i| soft[2][4]=i
#define a sample hash
#soft = {dealer => {player => "action"}}

blackjack = Hash.new
blackjack = {"soft" => {4 => {19 => "Stand"}}}
blackjack = {"soft" => {2 => {13 => "Hit",
                              14 => "Hit",
                              15 => "Hit",
                              16 => "Hit",
                              17 => "Double or Hit",
                              18 => "Stand",
                              19 => "Stand",
                              20 => "Stand",
                              21 => "Stand"},
                        3 => {13 => "Hit",
                              14 => "Hit",
                              15 => "Hit",
                              16 => "Hit",
                              17 => "Double or Hit",
                              18 => "Double or Stand",
                              19 => "Stand",
                              20 => "Stand",
                              21 => "Stand"},
                        4 => {13 => "Double or Hit",
                              14 => "Double or Hit",
                              15 => "Double or Hit",
                              16 => "Double or Hit",
                              17 => "Double or Hit",
                              18 => "Double or Stand",
                              19 => "Stand",
                              20 => "Stand",
                              21 => "Stand"},
                        5 => {13 => "Double or Hit",
                              14 => "Double or Hit",
                              15 => "Double or Hit",
                              16 => "Double or Hit",
                              17 => "Double or Hit",
                              18 => "Double or Stand",
                              19 => "Stand",
                              20 => "Stand",
                              21 => "Stand"},
                        6 => {13 => "Double or Hit",
                              14 => "Double or Hit",
                              15 => "Double or Hit",
                              16 => "Double or Hit",
                              17 => "Double or Hit",
                              18 => "Double or Stand",
                              19 => "Double or Stand",
                              20 => "Stand",
                              21 => "Stand"},
                        7 => {13 => "Hit",
                              14 => "Hit",
                              15 => "Hit",
                              16 => "Hit",
                              17 => "Hit",
                              18 => "Stand",
                              19 => "Stand",
                              20 => "Stand",
                              21 => "Stand"},
                        8 => {13 => "Hit",
                              14 => "Hit",
                              15 => "Hit",
                              16 => "Hit",
                              17 => "Hit",
                              18 => "Stand",
                              19 => "Stand",
                              20 => "Stand",
                              21 => "Stand"},
                        9 => {13 => "Hit",
                              14 => "Hit",
                              15 => "Hit",
                              16 => "Hit",
                              17 => "Hit",
                              18 => "Hit",
                              19 => "Stand",
                              20 => "Stand",
                              21 => "Stand"},
                       10 => {13 => "Hit",
                              14 => "Hit",
                              15 => "Hit",
                              16 => "Hit",
                              17 => "Hit",
                              18 => "Hit",
                              19 => "Stand",
                              20 => "Stand",
                              21 => "Stand"},
                       11 => {13 => "Hit",
                              14 => "Hit",
                              15 => "Hit",
                              16 => "Hit",
                              17 => "Hit",
                              18 => "Stand",
                              19 => "Stand",
                              20 => "Stand",
                              21 => "Stand"}},
              "hard" => {2 => {5 => "Hit",
                               6 => "Hit",
                               7 => "Hit",
                               8 => "Hit",
                               9 => "Double or Hit",
                              10 => "Double or Hit",
                              11 => "Double or Hit",
                              12 => "Hit",
                              13 => "Stand",
                              14 => "Stand",
                              15 => "Stand",
                              16 => "Stand",
                              17 => "Stand",
                              18 => "Stand",
                              19 => "Stand",
                              20 => "Stand",
                              21 => "Stand"},
                               5 => "Hit",
                               6 => "Hit",
                               7 => "Hit",
                               8 => "Hit",
                               9 => "Double or Hit",
                              10 => "Double or Hit",
                              11 => "Double or Hit",
                              12 => "Hit",
                              13 => "Stand",
                              14 => "Stand",
                              15 => "Stand",
                              16 => "Stand",
                              17 => "Stand",
                              18 => "Stand",
                              19 => "Stand",
                              20 => "Stand",
                              21 => "Stand"}}



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
