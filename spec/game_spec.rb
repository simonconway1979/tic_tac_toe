require 'game.rb'

describe Game do

  subject(:game) {described_class.new}

  it 'should initialize with player_x and player_o' do
    expect(game.player_o).to be_an_instance_of(Player)
    expect(game.player_x).to be_an_instance_of(Player)
  end

end
