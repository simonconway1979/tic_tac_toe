class Config

  attr_reader :available_moves, :model

  def initialize
    @available_moves = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
    @model = [{column_a: [nil, nil, nil]},
              {column_b: [nil, nil, nil]},
              {column_c: [nil, nil, nil]},
              {row_1: [nil, nil, nil]},
              {row_2: [nil, nil, nil]},
              {row_3: [nil, nil, nil]},
              {diagonal1: [nil, nil, nil]},
              {diagonal2: [nil, nil, nil]}]
  end

  def get_available_moves
    @available_moves
  end

  def get_model
    @model
  end



end
