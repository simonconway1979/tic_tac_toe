require 'view'

describe View do

  it 'should have a method to show the starting state of the board' do
    expect(view.show).to eq"   |   |
                            -----------
                               |   |
                            -----------
                               |   |   "       
  end





end
