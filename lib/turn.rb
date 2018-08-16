def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
    if (position_taken?(board, index) == false && index.between?(0, 8) == true)
      return true
    elsif position_taken?(board, index) == true
      return nil
  end
end

def position_taken?(board, index_num)
    if board[index_num] == " " || board[index_num] == "" || board[index_num] == nil
      return false
    elsif board[index_num] == "X" || board[index_num] == "O"
      return true
  end 
end  

def input_to_index(input)
  input.to_i - 1
end

def move(array, index, character = "X")
  array[index]=character
end

def turn(input)
  puts "Please enter 1-9:"
  
end