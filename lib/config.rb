class Config

  attr_reader :available_moves, :model, :player

  def initialize
    @available_moves = [:A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3]

    @model = {row_0: [nil, nil, nil],
              row_1: [nil, nil, nil],
              row_2: [nil, nil, nil],
              column_0: [nil, nil, nil],
              column_1: [nil, nil, nil],
              column_2: [nil, nil, nil],
              diagonal_0: [nil, nil, nil],
              diagonal_1: [nil, nil, nil]}

    @translations = {A1: {row_0: {position: 0},
                          column_0: {position: 0},
                          diagonal_0: {position: 0}},
                     A2: {row_0: {position: 1},
                          column_1: {position: 1}},
                     A3: {row_0: {position: 2},
                          column_2: {position: 0},
                          diagonal_1: {position: 2}},
                     B1: {row_1: {position: 0},
                          column_0: {position: 1}},
                     B2: {row_1: {position: 1},
                          column_1: {position: 1},
                          diagonal_0: {position: 1},
                          diagonal_1: {position: 1}},
                     B3: {row_1: {position: 2},
                          column_2: {position: 1}},
                     C1: {row_2: {position: 0},
                          column_0: {position: 2},
                          diagonal_1: {position: 0}},
                     C2: {row_2: {position: 1},
                          column_1: {position: 2}},
                     C3: {row_2: {position: 2},
                          column_2: {position: 2},
                          diagonal_0: {position: 2}}
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
