# Twenty-One

CARD_VALUES = { 2=>2, 3=>3, 4=>4, 5=>5, 6=>6, 7=>7, 8=>8, 9=>9, 10=>10,
               'Jack' => 10, 'Queen' => 10, 'King' => 10 }

def prompt(text)
  puts "=> #{text}"
end


def create_deck
  deck = []
  4.times do 
    deck << [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']
  end
  deck.flatten!
end

def deal_card(current_deck)
  # Delete a card from the deck, which returns that value as the card dealt
  current_deck.delete_at(rand(0..current_deck.length))
end

def display_hand(hand)
  # Method to display hands between every turn?
  all_cards = ''
  hand.each { |card| all_cards << " #{card} " }
  all_cards
end

def display_cards(player, dealer)
  # Display player and dealer's hands
  puts "Dealer has: #{display_hand(dealer)} and unknown card"
  puts "You have:   #{display_hand(player)}"
  puts " "
end

def calculate_ace_value(current_hand)
  # If current hand combined is > than 21, then set Ace = 1
  # Else if current hand combined is < 21, then set Ace = 11

end

def calculate_hand(hand)
  hand.reduce
end

def player_busts?(player_total)
  player_total > 21
end

def dealer_busts?(dealer_total)
  dealer_total > 21
end

# Create a fresh deck for the game
deck = create_deck

# Initialize hands
player_hand       = []
dealer_hand       = []
dealer_table_card = [] # We'll track the facedown card separately

# Valid player choices
valid_choices = ['hit', 'stay']

# Begin main game loop
loop do 
  # Deal the initial hand
  player_hand << deal_card(deck) << deal_card(deck)
  dealer_hand << deal_card(deck)
  dealer_table_card << deal_card(deck)

  puts "Dealer has: #{display_hand(dealer_hand)} and unknown card"
  puts "You have:   #{display_hand(player_hand)}"
  puts " "

  loop do
    # Hit or stay loop
    prompt "Do you want to hit or stay?"

    choice = gets.chomp
    break if valid_choices.include?(choice)
    prompt "Please type 'hit' or 'stay': "
  end

  if choice == 'stay'
    # go to dealer's turn - break from loop?
  else
    player_hand << deal_card(deck)
    # check if player busted
    # if so, display cards and dealer wins
    # if not, ask if player wants to hit or stay again
  end




end # End of main game loop 