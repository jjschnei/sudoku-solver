require_relative '../possibilities'

describe "possibilities" do
  let(:board){[{number: 9, row: 2, col: 3, box: 2},{number: 1, row: 2, col: 3, box: 2},{number: 3, row: 2, col: 3, box: 2}]}

  it "returns an array of row possibilies for row 2" do
    expect(row_possibles(0, board)).to eq([ 2, 4, 5, 6, 7, 8])
  end

  it "returns an array of row possibilies for col 3" do
    expect(col_possibles(0, board)).to eq([2, 4, 5, 6, 7, 8])
    end


  let(:board){[{number: 9, row: 2, col: 3, box: 2},{number: 1, row: 2, col: 3, box: 1},{number: 3, row: 2, col: 3, box: 2}]}

  it "returns an array of row possibilies for box 2" do
    expect(box_possibles(0, board)).to eq([1, 2, 4, 5, 6, 7, 8])
  end
end
