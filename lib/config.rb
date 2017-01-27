class Config

  attr_reader :available_moves, :model

  def initialize
    @available_moves = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
    @model = {column_0: [nil, nil, nil],
              column_1: [nil, nil, nil],
              column_2: [nil, nil, nil],
              row_0: [nil, nil, nil],
              row_1: [nil, nil, nil],
              row_2: [nil, nil, nil],
              diagonal_0: [nil, nil, nil],
              diagonal_1: [nil, nil, nil]}
  end

  def get_available_moves
    @available_moves
  end

  def get_model
    @model
  end



end
