require 'game.rb'
require 'pry'

describe Game do

  subject(:game) {described_class.new}

  context "Initialization" do
    it 'should initialize with player_x and player_o' do
      expect(subject.player_1).to be_an_instance_of(Player)
      expect(subject.player_2).to be_an_instance_of(Player)
    end

    it 'should have a turn counter' do
      expect(subject.turn_counter).to be_an(Array)
    end
  end

  context "Updating the model" do
    it 'should take a turn and update the model according to the move' do
      subject.update_model(:A1)
      subject.update_model(:B2)
      subject.update_model(:C3)
      expect(subject.model).to eq({:row_0=>["X", nil, nil],
                                   :row_1=>[nil, "X", nil],
                                   :row_2=>[nil, nil, "X"],
                                   :column_0=>["X", nil, nil],
                                   :column_1=>[nil, "X", nil],
                                   :column_2=>[nil, nil, "X"],
                                   :diagonal_0=>["X", "X", "X"],
                                   :diagonal_1=>[nil, "X", nil]})
    end

    it 'After changing turns should take a turn and update the model fomr player 0 according to the move' do
      subject.change_turn
      subject.update_model(:A1)
      subject.update_model(:B2)
      subject.update_model(:C3)
      expect(subject.model).to eq({:row_0=>["O", nil, nil],
                                   :row_1=>[nil, "O", nil],
                                   :row_2=>[nil, nil, "O"],
                                   :column_0=>["O", nil, nil],
                                   :column_1=>[nil, "O", nil],
                                   :column_2=>[nil, nil, "O"],
                                   :diagonal_0=>["O", "O", "O"],
                                   :diagonal_1=>[nil, "O", nil]})
    end
  end


  context "Playing a turn" do
    it 'should have a method to return the player name for the current player' do
      expect(subject.player).to eq("X")
    end

    it 'should have a method to check if the current move is valid' do
      expect(subject.check_move(:A1)).to eq([:A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3])
      expect{subject.check_move("not_allowed")}.to raise_error("This is not a valid move. Please pick a cell value such as :A1, :B2, :C3 etc.")
    end

    it 'should have a method to change player turn' do
      expect(subject.player).to eq("X")
      subject.change_turn
      expect(subject.player).to eq("O")
    end

    it 'should be able to play a move which leads to an updated model and changing turn' do
      subject.play(:A1)
      subject.play(:B2)
      subject.play(:C3)
      expect(subject.model).to eq({:row_0=>["X", nil, nil],
                                   :row_1=>[nil, "O", nil],
                                   :row_2=>[nil, nil, "X"],
                                   :column_0=>["X", nil, nil],
                                   :column_1=>[nil, "O", nil],
                                   :column_2=>[nil, nil, "X"],
                                   :diagonal_0=>["X", "O", "X"],
                                   :diagonal_1=>[nil, "O", nil]})
    end

    it 'should have a method to check whether either player has won' do
      expect(game.check_win).to eq(false)
      game.play(:A1)
      game.play(:B1)
      game.play(:A2)
      game.play(:B2)
      game.play(:A3)
      expect.(game.check_win).to eq(true)
    end

  end

  context 'Viewing the board' do
    it 'should have a view method to present the board' do
      expect(game.view).to eq"       1     2     3  /n
                                 /n A        |     |     /n
                                      -----------------/n
                                  B        |     |     /n
                                      -----------------/n
                                  C        |     |      \n\n\n"
    end
  end
end
