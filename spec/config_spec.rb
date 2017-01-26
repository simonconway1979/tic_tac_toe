require 'config.rb'


describe Config do

subject(:config) {described_class.new}

  it 'should have the available moves for the game' do
    expect(config.available_moves).to eq(["A1", "A2", "A3",
                                          "B1", "B2", "B3",
                                          "C1", "C2", "C3"])
  end

  it 'should have the model for the game' do
    expect(config.model).to eq([{column_a: [nil, nil, nil]},
                                {column_b: [nil, nil, nil]},
                                {column_c: [nil, nil, nil]},
                                {row_1: [nil, nil, nil]},
                                {row_2: [nil, nil, nil]},
                                {row_3: [nil, nil, nil]},
                                {diagonal1: [nil, nil, nil]},
                                {diagonal2: [nil, nil, nil]}])
  end

  it 'should have a method to get available moves' do
    expect(subject.get_available_moves).to eq(["A1", "A2", "A3",
                                               "B1", "B2", "B3",
                                               "C1", "C2", "C3"])
  end

  it 'should have a method to get game model' do
    expect(subject.get_model).to eq([{column_a: [nil, nil, nil]},
                                               {column_b: [nil, nil, nil]},
                                               {column_c: [nil, nil, nil]},
                                               {row_1: [nil, nil, nil]},
                                               {row_2: [nil, nil, nil]},
                                               {row_3: [nil, nil, nil]},
                                               {diagonal1: [nil, nil, nil]},
                                               {diagonal2: [nil, nil, nil]}])
  end

end
