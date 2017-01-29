require 'game.rb'
require 'pry'

describe Game do

  subject(:game) {described_class.new}


  it 'should initialize with player_x and player_o' do
    expect(subject.player_o).to be_an_instance_of(Player)
    expect(subject.player_x).to be_an_instance_of(Player)
  end

  it 'should have a turn counter' do
    expect(subject.turn_counter).to be_an(Array)
  end

  it 'should take a turn and update the model accordingly' do

    binding.pry
  end


end
