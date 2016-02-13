require_relative '../square_possibles'
describe "possibilities" do
  let(:board){[{number: 9, row: 2, col: 3, box: 2},{number: 1, row: 2, col: 3, box: 2},{number: 3, row: 2, col: 3, box: 2}]}

  it "returns an array of row possibilies for row 2" do
    expect(row_possibles(0, board)).to eq([ 2, 4, 5, 6, 7, 8])
  end
