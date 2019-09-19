WIN_COMBINATIONS = [
  [0,1,2],[3,4,5],[6,7,8],
  [0,3,6],[1,4,7],[2,5,8],
  [0,4,8],[2,4,6]
]

board = [" "," "," "," "," "," "," "," "," "]

  def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, token)
  board[index] = token
#  token = "X" || "O"
end

def position_taken?(board, index)
  if board[index] != " "
     return true
   else
return false
end
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

def turn(board)
   puts "Please enter a number 1-9:"
   input = gets.strip
   index = input_to_index(input)
   if !valid_move?(board, index)
     turn(board)
  end
  move(board, index, token)
  display_board(board)
end
 #   if valid_move?(board, index)
 #     move(board, index, token)
 #     display_board(board)
 #   else
 #     turn(board)
 #   end
 # end
