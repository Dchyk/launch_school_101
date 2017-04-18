VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock')) ||
    (first == 'lizard' && (second == 'paper' || second == 'spock'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def display_score(player_wins, computer_wins)
  if player_wins < 5 && computer_wins < 5
    prompt("Player wins: #{player_wins}")
    prompt("Computer wins: #{computer_wins}")
  elsif player_wins == 5
    prompt("You won 5 times! Congratulations - that's game over!")
  else
    prompt("The computer won 5 times! Sorry - that's game over!")
  end
end

player_win_count = 0
computer_win_count = 0

loop do
  short_choice = ''
  full_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    short_choice = Kernel.gets().chomp()

    VALID_CHOICES.each do |word|         # Any number of letters can be input
      if word.start_with?(short_choice)  # so, 's' will choose 'spock'
        full_choice = word               #     'sc' will choose 'scissors'
      end
    end

    if VALID_CHOICES.include?(full_choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{full_choice}; Computer chose: #{computer_choice}")

  display_results(full_choice, computer_choice)

  if win?(full_choice, computer_choice)
    player_win_count += 1
  elsif win?(computer_choice, full_choice)
    computer_win_count += 1
  end

  display_score(player_win_count, computer_win_count)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
