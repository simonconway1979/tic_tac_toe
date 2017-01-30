require 'config.rb'


describe Config do

subject(:config) {described_class.new}

  it 'should have the available moves for the game' do
    expect(config.available_moves).to eq([:A1, :A2, :A3,
                                          :B1, :B2, :B3,
                                          :C1, :C2, :C3])
  end

  it 'should have the model for the game' do
    expect(config.model).to eq({row_0: [nil, nil, nil],
                                row_1: [nil, nil, nil],
                                row_2: [nil, nil, nil],
                                column_0: [nil, nil, nil],
                                column_1: [nil, nil, nil],
                                column_2: [nil, nil, nil],
                                diagonal_0: [nil, nil, nil],
                                diagonal_1: [nil, nil, nil]})
  end

  it 'should have a method to get available moves' do
    expect(subject.get_available_moves).to eq([:A1, :A2, :A3,
                                               :B1, :B2, :B3,
                                               :C1, :C2, :C3])
  end

  it 'should have a method to get game model' do
    expect(subject.get_model).to eq({row_0: [nil, nil, nil],
                                     row_1: [nil, nil, nil],
                                     row_2: [nil, nil, nil],
                                     column_0: [nil, nil, nil],
                                     column_1: [nil, nil, nil],
                                     column_2: [nil, nil, nil],
                                     diagonal_0: [nil, nil, nil],
                                     diagonal_1: [nil, nil, nil]})
  end

end
