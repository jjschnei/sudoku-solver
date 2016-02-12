def row_possibles(square, board)
  # go into squares hash, find row value
  # go into board hash heard all other numbers with same row value
    row = board[square][:row]
    row_possibles = [1,2,3,4,5,6,7,8,9]
    board.each do |square_info|
      if square_info[:row] == row
        row_possibles.delete(square_info[:number])
      end
    end
  return row_possibles
end


def col_possibles(square, board)
    col = board[square][:col]
    col_possibles = [1,2,3,4,5,6,7,8,9]
    board.each do |square_info|
      if square_info[:col] == col
        col_possibles.delete(square_info[:number])
      end
    end
    return col_possibles
end

def box_possibles(square, board)
    box = board[square][:box]
    box_possibles = [1,2,3,4,5,6,7,8,9]
    board.each do |square_info|
      if square_info[:box] == box
        box_possibles.delete(square_info[:number])
      end
    end
    return box_possibles
end
