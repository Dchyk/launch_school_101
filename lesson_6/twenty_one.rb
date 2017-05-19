# Twenty-One
require 'pry'

CARD_VALUES = { 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7, 8 => 8, 9 => 9,
                10 => 10, 'Jack' => 10, 'Queen' => 10, 'King' => 10,
                'Ace' => 1 }

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
  current_deck.delete_at(rand(0..current_deck.length - 1))
end

def display_hand(hand)
  all_cards = []
  hand.each { |card| all_cards << " #{card} " }
  all_cards.join('and')
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

def calculate_winner(dealer, table, player) # cards
  if calculate_dealer_hand(dealer, table) > calculate_hand(player)
    'Dealer wins!'
  elsif calculate_dealer_hand(dealer, table) < calculate_hand(player)
    'You win!'
  elsif calculate_dealer_hand(dealer, table) == calculate_hand(player)
    "It's a push - no one wins!"
  end
end

def display_winner(winner)
  prompt winner
end

def display_totals(dealer, table, player) # cards
  prompt "Dealer has #{calculate_dealer_hand(dealer, table)}" \
         " and you have #{calculate_hand(player)}"
end

loop do # Begin outer main game loop
  deck = create_deck # Create a fresh deck for the game

  # Initialize hands
  player_hand       = []
  dealer_hand       = []
  table_card        = [] # The dealer's facedown table card

  # Begin single game loop
  loop do
    # Deal the initial hand
    player_hand << deal_card(deck) << deal_card(deck)
    dealer_hand << deal_card(deck)
    table_card << deal_card(deck)

    loop do
      system 'clear'
      prompt "Dealer has: #{display_hand(dealer_hand)}and unknown card"
      prompt "You have:   #{display_hand(player_hand)}"
      puts " "

      # Check if player busted - only happens after at least 1 hit
      break if busts?(calculate_hand(player_hand))

      prompt "Do you want to hit or stay? Type 'stay' or any key to hit:"

      choice = gets.chomp
      break if choice == 'stay'

      # Deal a new card
      player_hand << deal_card(deck)
    end

    if busts?(calculate_hand(player_hand))
      prompt "You busted! Dealer wins!"
      break
    else # Dealer hits up to at least 17
      while calculate_dealer_hand(dealer_hand, table_card) < 17
        dealer_hand << deal_card(deck)
      end

      system 'clear'
      prompt "Dealer flips his table card over..."
      puts " "
      prompt "Dealer has: #{display_hand(dealer_hand)}and #{table_card.first}"
      prompt "You have:   #{display_hand(player_hand)}"
      puts " "

      if busts?(calculate_dealer_hand(dealer_hand, table_card))
        display_totals(dealer_hand, table_card, player_hand)
        prompt "You win! The dealer busted!"
      else
        display_totals(dealer_hand, table_card, player_hand)
        display_winner(calculate_winner(dealer_hand, table_card, player_hand))
      end
    end

    break
  end # End of single game loop

  puts " "
  prompt "Wanna go again? Type 'y' to play again or any key to quit."
  again = gets.chomp
  break if again != 'y'
end # End of main outer game loop

prompt "Thanks for playing Twenty-One! I had fun taking your money."
