require_relative 'player'

describe Player do

  subject(:player) {described_class.new}

  it "should have two players, player X and player O" do
    expect(player.player_x).to be_an_instance_of(:player)
    expect(player.player_o).to be_an_instance_of(:player)
  end

end
