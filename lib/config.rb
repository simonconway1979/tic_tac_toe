require 'config.rb'

class Config

  attr_reader :available_moves

  def initialize
    @available_moves = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
  end

end
