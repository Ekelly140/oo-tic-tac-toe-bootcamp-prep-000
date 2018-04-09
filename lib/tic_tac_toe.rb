class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
 


  def input_to_index(index)
   @index = index.to_i - 1
  end 
  
   def move(board, char="X") 
  board[@index.to_i] = char
end

 def position_taken?(board, index)
   if (@board[@index] == "X" || @board[@index] == "O")
     return true 
   else 
     return false
   end
 end
 
  def valid_move?(board, index)
  if   index.between?(0,8) && (board[index] == " " || board[index] == "")
  return true 
  else 
  return false
  end
 end 
 
 def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  char = current_player(board)
  until valid_move?(board,index) == true
  puts"Not a valid move. Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  end
  move(board,index,char)
  display_board(board)
end 

def turn_count(board)
  count =0
  board.each do |turn| 
    if turn == "O" || turn == "X" 
      count += 1 
    end
  end
    return count

end

 
def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
end 