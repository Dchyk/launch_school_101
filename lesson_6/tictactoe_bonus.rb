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
def display_board(brd)
  system 'clear'
  puts "You're an #{PLAYER_MARKER}. Computer is an #{COMPUTER_MARKER}."
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

# def computer_places_piece!(brd)                    # original comp places piece
#   square = empty_squares(brd).sample
#   brd[square] = COMPUTER_MARKER
# end

# New computer places piece:

def computer_places_piece!(brd)  
  # Computer plays defense, and plays an open square on a row where player has 2 squares
  if brd.values_at(*TOP_ROW).count(PLAYER_MARKER) == 2 && 
    brd.values_at(*TOP_ROW).count(COMPUTER_MARKER) == 0
    computer_next_square = TOP_ROW.select { |square| brd[square] == INITIAL_MARKER }.first
  elsif brd.values_at(*MIDDLE_ROW).count(PLAYER_MARKER) == 2 && 
    brd.values_at(*MIDDLE_ROW).count(COMPUTER_MARKER) == 0
    computer_next_square = MIDDLE_ROW.select { |square| brd[square] == INITIAL_MARKER }.first
  elsif brd.values_at(*BOTTOM_ROW).count(PLAYER_MARKER) == 2 && 
    brd.values_at(*BOTTOM_ROW).count(COMPUTER_MARKER) == 0
    computer_next_square = BOTTOM_ROW.select { |square| brd[square] == INITIAL_MARKER }.first
  else
    computer_next_square = empty_squares(brd).sample  # If player not threatening a row, computer picks randomly
  end

  brd[computer_next_square] = COMPUTER_MARKER
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

score = {'Player'=>0, 'Computer'=>0}  # Initialize scoring

loop do
  board = initialize_board
  display_board(board)

  loop do
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

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
