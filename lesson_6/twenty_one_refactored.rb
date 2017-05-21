# Twenty-One Refactored + bonus features!
require 'pry'

CARD_VALUES = { 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7, 8 => 8, 9 => 9,
                10 => 10, 'Jack' => 10, 'Queen' => 10, 'King' => 10,
                'Ace' => 1 }
BLACKJACK = 21 # The highest possible score - go over and you bust
DEALER_MAX = 17 # Until dealer cards >= 17, dealer will keep hitting

def prompt(text)
  puts "=> #{text}"
end

def create_deck
  [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace'] * 4
end

def deal_card(current_deck)
  # Shuffle the deck, then remove and return the first element
  current_deck.shuffle.shift
end

def display_hand(hand)
  hand.map { |card| " #{card} " }.join('and')
end

def calculate_hand(hand)
  hand_value = hand.inject(0) { |total, card| total + CARD_VALUES[card] }

  if hand.include?('Ace') && hand_value + 10 <= BLACKJACK
    hand_value += 10
  end

  hand_value
end

def calculate_dealer_hand(hand, dealer_table_card)
  calculate_hand(hand) + CARD_VALUES[dealer_table_card.first]
end

def busts?(hand_total)
  hand_total > BLACKJACK
end

def return_winner(dealer_hand_total, player_hand_total) # totals
  winner = ''
  if dealer_hand_total > player_hand_total
    winner = 'Dealer'
  elsif dealer_hand_total < player_hand_total
    winner = 'You'
  elsif dealer_hand_total == player_hand_total
    winner = 'No one'
  end
  winner
end

def display_winner(winner)
  if winner == 'Dealer'
    prompt 'Dealer wins!'
  elsif winner == 'You'
    prompt 'You win!'
  elsif winner == 'No one'
    prompt "It's a push - no one wins!"
  end
end

def display_totals(dealer, player) # cards
  prompt "Dealer has #{dealer}" \
         " and you have #{player}"
  puts " "
end

def display_if_overall_winner(player_win_total, dealer_win_total)
  if player_win_total == 5
    puts " "
    prompt "You won 5 times! Congrats, you are the overall winner!"
    puts " "
  elsif dealer_win_total == 5
    puts " "
    prompt "The dealer won 5 times - game over, the dealer won!"
    puts " "
  end
end

def reset_score_if_overall_winner(player_win_total, dealer_win_total)
  if player_win_total == 5 || dealer_win_total == 5
    player_win_total = 0
    dealer_win_total = 0
  end
end

def deal_cards(player, dealer, dealer_table_card, current_deck)
  player << deal_card(current_deck) << deal_card(current_deck)
  dealer << deal_card(current_deck)
  dealer_table_card << deal_card(current_deck)
end

player_wins = 0 # Running total of player wins
dealer_wins = 0 # Running total of dealer wins

loop do # Begin outer main game loop
  deck = create_deck # Create a fresh deck for the game

  # Initialize hands
  player_hand       = []
  dealer_hand       = []
  table_card        = [] # The dealer's facedown table card
  player_total      = 0  # Total value of player's hand
  dealer_total      = 0  # Total value of dealer's hand

  # Begin single game loop
  loop do
    # Deal the initial hand

    deal_cards(player_hand, dealer_hand, table_card, deck)

    loop do
      system 'clear'
      prompt "Dealer has: #{display_hand(dealer_hand)}and unknown card"
      prompt "You have:   #{display_hand(player_hand)}"
      puts " "

      player_total = calculate_hand(player_hand)

      # Check if player busted - only happens after at least 1 hit
      break if busts?(player_total)

      prompt "Your current hand total is #{player_total}."
      prompt "Do you want to hit or stay? Type 'stay' or any key to hit:"

      choice = gets.chomp
      break if choice == 'stay'

      # Deal a new card
      player_hand << deal_card(deck)
    end

    if busts?(calculate_hand(player_hand))
      prompt "You busted! Dealer wins!"
      dealer_wins += 1
      break
    else # Dealer hits up to at least 17
      while calculate_dealer_hand(dealer_hand, table_card) < DEALER_MAX
        dealer_hand << deal_card(deck)
      end

      dealer_total = calculate_dealer_hand(dealer_hand, table_card)

      system 'clear'
      prompt "Dealer flips his table card over..."
      puts " "
      prompt "Dealer has: #{display_hand(dealer_hand)}and #{table_card.first}"
      prompt "You have:   #{display_hand(player_hand)}"
      puts " "

      if busts?(dealer_total)
        display_totals(dealer_total, player_total)
        prompt "You win! The dealer busted!"
        player_wins += 1
      else
        display_totals(dealer_total, player_total)
        display_winner(return_winner(dealer_total, player_total))
      end
    end

    break
  end # End of single game loop

  if return_winner(dealer_total, player_total) == 'You' && !busts?(player_total)
    player_wins += 1
  elsif return_winner(dealer_total, player_total) == 'Dealer' && !busts?(dealer_total)
    dealer_wins += 1
  end

  puts " "
  prompt "Total wins - Player: #{player_wins}  Dealer: #{dealer_wins}"

  display_if_overall_winner(player_wins, dealer_wins)
  reset_score_if_overall_winner(player_wins, dealer_wins)

  prompt "Wanna go again? Type 'y' to play again or any key to quit."
  again = gets.chomp
  break if again != 'y'
end # End of main outer game loop


prompt "Thanks for playing Twenty-One! I had fun taking your money."
