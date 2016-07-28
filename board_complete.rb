def board_complete?(board)
  board.each do |square_info|
    if square_info[:number] == nil
      return false
    else
      return true
    end
end

def display(board)
  # print board pretty
end
