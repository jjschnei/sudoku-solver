require_relative 'square_possibles'
require_relative 'board_complete'
require_relative 'sudoku_data_structure'

#read in the sodoku
#convert sodoku into array of hashes
#iterate through each hash numbers key and check if == to nil
#if == to nil check square posibilities and fill if possible is 1
#return new board

board_string = File.readlines('sudoku_puzzles.txt').first.chomp
board = make_board(board_string)
until board_complete?
  board.each do |square|
    if square.number == nil
      #fill board with square possibles
      board = square_possibles(square, board)
      #fill board with square numbers
      board = square_fill
    end
end

return board # note : this will return as an array (need to complete display method)
