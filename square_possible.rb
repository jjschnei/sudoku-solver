require_relative 'row_col_box_possibles'

def square_possibles(square, board)
  row_possibles = row_possible(square, board)
  col_possibles = col_possible(square, board)
  box_possibles = box_possible(square, board)
  square_possibles = row_possibles & col_possibles & box_possibles
  board[square][:possibles] = square_possibles
  return board
end

def square_fill(square, board)
  if board[square][:possibles].length == 1
    board[square][:number] = board[square][:possibles][0]
  end
  return board
end
