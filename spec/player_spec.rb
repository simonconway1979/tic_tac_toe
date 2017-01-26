require 'player.rb'

describe Player do

  subject(:player) {described_class.new}

  it "should have a name" do
    expect(player).to respond_to(:name)
  end

  it "should have a moves" do
    expect(player.moves).to be_an(Array)
  end

end
