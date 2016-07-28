# input= "1-58-2----9--764-52--4--819-19--73-6762-83-9-----61-5---76---3-43--2-5-16--3-89--"

# # reference_array = sudoku_input.split("").each_slice(9).to_a

# # [["1", "-", "5", "8", "-", "2", "-", "-", "-"],
# # ["-", "9", "-", "-", "7", "6", "4", "-", "5"],
# # ["2", "-", "-", "4", "-", "-", "8", "1", "9"],
# # ["-", "1", "9", "-", "-", "7", "3", "-", "6"],
# # ["7", "6", "2", "-", "8", "3", "-", "9", "-"],
# # ["-", "-", "-", "-", "6", "1", "-", "5", "-"],
# # ["-", "-", "7", "6", "-", "-", "-", "3", "-"],
# # ["4", "3", "-", "-", "2", "-", "5", "-", "1"],
# # ["6", "-", "-", "3", "-", "8", "9", "-", "-"]]


class Sudoku

  attr_accessor :board

  def initialize(sudoku_string)
    @board = []
    @sudoku_string = sudoku_string
  end


  def create_sudoku_data
    @sudoku_string.chars.each_with_index do |character, index|
      if character == "-"
        @board << Hash[:number, nil, :row, nil, :column, nil, :box, nil, :possibles, nil]
      else
        @board << Hash[:number, character.to_i, :row, nil, :column, nil, :box, nil, :possibles, nil]
      end
    end
    @board
  end

  def set_rows
      @board.each_with_index do |square, index|
      if index < 9
        @board[index][:row] = 1
      elsif index < 18
        @board[index][:row] = 2
      elsif index < 27
        @board[index][:row] = 3
      elsif index < 36
        @board[index][:row] = 4
      elsif index < 45
        @board[index][:row] = 5
      elsif index < 54
        @board[index][:row] = 6
      elsif index < 63
        @board[index][:row] = 7
      elsif index < 72
        @board[index][:row] = 8
      else
        @board[index][:row] = 9
      end
    end
  end


  def set_columns
    sliced_board = @board.each_slice(9).to_a
    rotated_board = sliced_board.transpose
    flat_transposed_board =  rotated_board.flatten
    flat_transposed_board.each_with_index do |square, index|
      if index < 9
        flat_transposed_board[index][:column] = 1
      elsif index < 18
        flat_transposed_board[index][:column] = 2
      elsif index < 27
        flat_transposed_board[index][:column] = 3
      elsif index < 36
        flat_transposed_board[index][:column] = 4
      elsif index < 45
        flat_transposed_board[index][:column] = 5
      elsif index < 54
        flat_transposed_board[index][:column] = 6
      elsif index < 63
        flat_transposed_board[index][:column] = 7
      elsif index < 72
        flat_transposed_board[index][:column] = 8
      else
        flat_transposed_board[index][:column] = 9
      end
    end
    @board = flat_transposed_board.each_slice(9).to_a.transpose


  end


  def set_box
    @board.flatten!
    @board.each_with_index do |square, index|
      if square[:column] <= 3 && square[:row] <= 3
        square[:box] = 1
      elsif square[:column] <= 6 && square[:row] <= 3
        square[:box] = 2
      elsif square[:column] <= 9 && square[:row] <= 3
        square[:box] = 3
      elsif square[:column] <= 3 && square[:row] <= 6
        square[:box] = 4
      elsif square[:column] <= 6 && square[:row] <= 6
        square[:box] = 5
      elsif square[:column] <= 9 && square[:row] <= 6
        square[:box] = 6
      elsif square[:column] <= 3 && square[:row] <= 9
        square[:box] = 7
      elsif square[:column] <= 6 && square[:row] <= 9
        square[:box] = 8
      else
        square[:box] = 9
      end
    end
  end


  def make_board
    create_sudoku_data
    set_rows
    set_columns
    set_box
    return @board
  end

end

my_game = Sudoku.new("1-58-2----9--764-52--4--819-19--73-6762-83-9-----61-5---76---3-43--2-5-16--3-89--")

my_game.make_board






