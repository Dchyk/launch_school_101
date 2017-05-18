# Twenty-One
require 'pry'

CARD_VALUES = { 2=>2, 3=>3, 4=>4, 5=>5, 6=>6, 7=>7, 8=>8, 9=>9, 10=>10,
               'Jack' => 10, 'Queen' => 10, 'King' => 10, 'Ace' => 1}

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
  current_deck.delete_at(rand(0..current_deck.length-1))
end

def display_hand(hand)
  # Method to display hands between every turn?
  all_cards = []
  hand.each { |card| all_cards << " #{card} " }
  all_cards.join('and')
end

def display_cards(player, dealer)
  # Display player and dealer's hands
  puts "Dealer has: #{display_hand(dealer)} and unknown card"
  puts "You have:   #{display_hand(player)}"
  puts " "
end

def calculate_ace_value(hand, hand_total_value)
  # If current hand combined is > than 21, then set Ace = 1
  # Else if current hand combined is < 21, then set Ace = 11

end

def calculate_hand(hand)
  hand_value = 0

  hand.each do |card|
    hand_value += CARD_VALUES[card]
  end

  if hand.include?('Ace') && hand_value + 10 <= 21
    hand_value += 10
  end

  hand_value
end

def calculate_dealer_hand(hand, dealer_table_card)
  calculate_hand(hand) + CARD_VALUES[dealer_table_card.first]
end

def busts?(hand_total)
  hand_total > 21
end

loop do # Begin outer main game loop

  # Create a fresh deck for the game
  deck = create_deck

  # Initialize hands
  player_hand       = []
  dealer_hand       = []
  table_card        = [] # The dealer's facedown table card 

  # Valid player choices
  valid_choices = ['hit', 'stay']
  choice = ''

  # Begin single game loop
  loop do
    # Deal the initial hand
    player_hand << deal_card(deck) << deal_card(deck) 
    dealer_hand << deal_card(deck)
    table_card << deal_card(deck) # The dealer's facedown table card

    loop do
      system 'clear'
      prompt "Dealer has: #{display_hand(dealer_hand)}and unknown card"
      prompt "You have:   #{display_hand(player_hand)}"
      puts " "

  
      # Check if player busted - only happens after at least 1 hit
      break if busts?(calculate_hand(player_hand))

      prompt "Do you want to hit or stay? Type anything to hit:"

      choice = gets.chomp
      break if choice == 'stay'

      # Deal a new card
      player_hand << deal_card(deck) 
    end

    if busts?(calculate_hand(player_hand))
      prompt "You busted! Dealer wins!"
      break
    else # Dealer hits up to at least 17
      while (calculate_dealer_hand(dealer_hand, table_card)) < 17
        dealer_hand << deal_card(deck)
      end

      system 'clear'
      prompt "Dealer flips his table card over..."
      puts " "
      prompt "Dealer has: #{display_hand(dealer_hand)}and #{table_card.first}"
      prompt "You have:   #{display_hand(player_hand)}"
      puts " "

      if busts?(calculate_dealer_hand(dealer_hand, table_card))
        prompt "Dealer has #{calculate_dealer_hand(dealer_hand, table_card)} and you have #{calculate_hand(player_hand)}"
        prompt "You win! The dealer busted!"
        break
      elsif (calculate_dealer_hand(dealer_hand, table_card)) > calculate_hand(player_hand)
        prompt "Dealer has #{calculate_dealer_hand(dealer_hand, table_card)} and you have #{calculate_hand(player_hand)}"
        prompt "Dealer wins!"
        break
      elsif (calculate_dealer_hand(dealer_hand, table_card)) < calculate_hand(player_hand)
        prompt "Dealer has #{calculate_dealer_hand(dealer_hand, table_card)} and you have #{calculate_hand(player_hand)}"
        prompt "You win!"
        break
      elsif (calculate_dealer_hand(dealer_hand, table_card)) == calculate_hand(player_hand)
        prompt "Dealer has #{calculate_dealer_hand(dealer_hand, table_card)} and you have #{calculate_hand(player_hand)}"
        prompt "It's a push - you both have 21!"
        break
      end

    end

    break
  end # End of single game loop 

  prompt "Wanna go again? Type 'y' to play again or any key to quit."
  again = gets.chomp
  break if again != 'y'
end # End of main outer game loop

prompt "Thanks for playing Twenty-One! I had fun taking your money."
