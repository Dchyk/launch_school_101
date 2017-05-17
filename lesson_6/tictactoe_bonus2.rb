# Tic Tac Toe

require 'pry-byebug'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals
# TWO_IN_ROW =  {top: [[1, 2], [2, 3], [1, 3]], 
#               middle: [[4, 5], [5, 6], [4, 6]],
#               bottom: [[7, 8], [8, 9], [7, 9]]}

TWO_IN_ROW = {top: [1, 2, 3], middle: [4, 5, 6], bottom: [7, 8, 9]}
TOP_ROW = [1, 2, 3]
MIDDLE_ROW = [4, 5, 6]
BOTTOM_ROW = [7, 8, 9]

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

PLAYS_FIRST = 'choose'

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(array, separator=', ', last_word='or')
  temp_array = array.dup  # Create a new array for display purposes 

  if array.size == 1
    return array.first
  else    
    last_num = temp_array.pop
    temp_array.join(separator) << "#{separator}#{last_word} " << last_num.to_s
  end
end


# rubocop:disable Metrics/MethodLength
def display_board(brd, player)
  system 'clear'
  puts "You're an #{PLAYER_MARKER}. Computer is an #{COMPUTER_MARKER}."
  puts "#{player.capitalize} plays first:"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/MethodLength

def display_score(score_hash)
  prompt "Score:"
  prompt "Player: #{score_hash['Player']}. Computer: #{score_hash['Computer']}."
end


def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board)
  if board.values_at(*line).count(PLAYER_MARKER) == 2
    board.select { |k, v| line.include?(k) && v == ' '}.keys.first
  else
    nil
  end
end

def find_winning_square(line, board)
  if board.values_at(*line).count(COMPUTER_MARKER) == 2
    board.select { |k, v| line.include?(k) && v == ' '}.keys.first
  else
    nil
  end
end

def find_computer_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == ' '}.keys.first
  else
    nil
  end
end


def computer_places_piece!(brd)
  square = nil

  # Find square to win first:

  WINNING_LINES.each do |line|
    square = find_computer_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # Find square to defend second:

  if !square
    WINNING_LINES.each do |line|
      square = find_computer_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # If square 5 is available, pick square 5:

  if !square && brd[5] == INITIAL_MARKER
    square = 5
  end

  # Just pick a random square:

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd) == []
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)

  WINNING_LINES.each do |line|
    # if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #       brd[line[1]] == COMPUTER_MARKER &&
    #       brd[line[2]] == COMPUTER_MARKER
    #   return 'Computer'
    # end
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def player_one_places_piece!(brd, player)
  if player == 'player'
    player_places_piece!(brd)
  elsif player == 'computer'
    computer_places_piece!(brd)
  end
end

def player_two_places_piece!(brd, player)
  if player == 'player'
    computer_places_piece!(brd)
  elsif player == 'computer'
    player_places_piece!(brd)
  end
end

def play_piece!(brd, crnt_plyr)
  if crnt_plyr == 'player'
    player_places_piece!(brd)
  elsif crnt_plyr == 'computer'
    computer_places_piece!(brd)
  end
end

def alternate_player(crnt_plyr)
  if crnt_plyr == 'player'
    'computer'
  else 
    'player'
  end
end

score = {'Player'=>0, 'Computer'=>0}  # Initialize scoring

player_one = ''                           # Initialize player choice

if PLAYS_FIRST == 'choose'
  loop do 
    prompt 'Who do you want to play first?'
    prompt "Choose 'player' or 'computer':"
    player_one = gets.chomp
    break if player_one == 'player' || player_one == 'computer'
    prompt "Sorry, that's not a valid choice."
  end
else
  player_one = PLAYS_FIRST
end

loop do
  board = initialize_board
  display_board(board, player_one)
  current_player = player_one

  loop do
    display_board(board, player_one)

    play_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)

    # player_one_places_piece!(board, player_one)
    # break if someone_won?(board) || board_full?(board)

    # display_board(board, player_one)

    # player_two_places_piece!(board, player_one)
    # break if someone_won?(board) || board_full?(board)
  end

  display_board(board, player_one)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    score[detect_winner(board)] += 1
  else
    prompt "It's a tie!"
  end

  display_score(score)

  if score.any? { |_, score| score == 5}
    prompt "#{detect_winner(board)} won 5 times! The game is over!"  # Should display whatever player just hit 5
    break
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe. Goodbye!"
