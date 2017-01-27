class Config

  attr_reader :available_moves, :model

  def initialize
    @available_moves = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
    @model = {row_0: [nil, nil, nil],
              row_1: [nil, nil, nil],
              row_2: [nil, nil, nil],
              column_0: [nil, nil, nil],
              column_1: [nil, nil, nil],
              column_2: [nil, nil, nil],
              diagonal_0: [nil, nil, nil],
              diagonal_1: [nil, nil, nil]}

    @translations = [A1: {row_0: ["X", nil, nil], column_0: ["X", nil, nil],  diagonal_0: ["X", nil, nil]},
                     A2: {row_0: [nil, "X", nil], column_1: ["X", nil, nil]},
                     A3: {row_0: [nil, nil, "X"], column_2: ["X", nil, nil],  diagonal_1: [nil, nil, "X"]},
                     B1: {row_1: ["X", nil, nil], column_0: [nil, "X", nil]},
                     B2: {row_1: [nil, "X", nil], column_1: [nil, "X", nil],  diagonal_0: [nil, "X", nil],  diagonal_1: [nil, "X", nil]},
                     B3: {row_1: [nil, nil, "X"], column_2: [nil, "X", nil]},
                     C1: {row_2: ["X", nil, nil], column_0: [nil, nil, "X"],  diagonal_1: ["X", nil, nil]},
                     C2: {row_2: [nil, "X", nil], column_1: [nil, nil, "X"]},
                     C3: {row_2: [nil, nil, "X"], column_2: [nil, nil, "X"],  diagonal_0: [nil, nil, "X"]}
                    ]

  end

  def get_available_moves
    @available_moves
  end

  def get_model
    @model
  end

  def get_translations
    @translations
  end

end
