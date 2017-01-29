class Config

  attr_reader :available_moves, :model, :player

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

    @translations = {A1: {row_0: {position: 0, value: "X"},
                          column_0: {position: 0, value: "X"},
                          diagonal_0: {position: 0, value: "X"}},
                     A2: {row_0: {position: 1, value: "X"},
                          column_1: {position: 1, value: "X"}},
                     A3: {row_0: {position: 2, value: "X"},
                          column_2: {position: 0, value: "X"},
                          diagonal_1: {position: 2, value: "X"}},
                     B1: {row_1: {position: 0, value: "X"},
                          column_0: {position: 1, value: "X"}},
                     B2: {row_1: {position: 1, value: "X"},
                          column_1: {position: 1, value: "X"},
                          diagonal_0: {position: 1, value: "X"},
                          diagonal_1: {position: 1, value: "X"}},
                     B3: {row_1: {position: 2, value: "X"},
                          column_2: {position: 1, value: "X"}},
                     C1: {row_2: {position: 1, value: "X"},
                          column_0: {position: 2, value: "X"},
                          diagonal_1: {position: 1, value: "X"}},
                     C2: {row_2: {position: 1, value: "X"},
                          column_1: {position: 2, value: "X"}},
                     C3: {row_2: {position: 2, value: "X"},
                          column_2: {position: 2, value: "X"},
                          diagonal_0: {position: 2, value: "X"}}
                    }
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
