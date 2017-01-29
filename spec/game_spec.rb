require 'game.rb'
require 'pry'

describe Game do

  subject(:game) {described_class.new}


  it 'should initialize with player_x and player_o' do
    expect(subject.player_1).to be_an_instance_of(Player)
    expect(subject.player_2).to be_an_instance_of(Player)
  end

  it 'should have a turn counter' do
    expect(subject.turn_counter).to be_an(Array)
  end

  it 'should take a turn and update the model according to the move' do
    binding.pry
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

  it 'should have a method to return the player name for the current player' do
    expect(game.player).to eq("X")
  end

  it 'should have a method to change player turn' do
    expect(game.player).to eq("X")
    game.change_turn
    expect(game.player).to eq("O")
  end




end
