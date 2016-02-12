require_relative '../sudoku'

describe "Sudoku" do


  context 'Tests for the convert_into_array' do

    it ("convert_into_array returns an array") do
      expect( convert_into_array("1-58-2----9--764-52--4--819-19--73-6762-83-9-----61-5---76---3-43--2-5-16--3-89--") ).should be_kind_of(Array)
    end

    it ("convert_into_array returns nested arrays with the proper structure") do
      expect( convert_into_array("1-58-2----9--764-52--4--819-19--73-6762-83-9-----61-5---76---3-43--2-5-16--3-89--") ).to eq([
                                                                                                                              ['1','-','5','8','-','2','-','-','-'],
                                                                                                                              ['-','9','-','-','7','6','4','-','5'],
                                                                                                                              ['2','-','-','4','-','-','8','1','9'],
                                                                                                                              ['-','1','9','-','-','7','3','-','6'],
                                                                                                                              ['7','6','2','-','8','3','-','9','-'],
                                                                                                                              ['-','-','-','-','6','1','-','5','-'],
                                                                                                                              ['-','-','7','6','-','-','-','3','-'],
                                                                                                                              ['4','3','-','-','2','-','5','-','1'],
                                                                                                                              ['6','-','-','3','-','8','9','-','-']
                                                                                                                              ])
    end

  end

end

