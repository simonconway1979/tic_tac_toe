require_relative 'config'
require_relative 'player'

class Game

  attr_reader :player_o, :player_x, :model, :available_moves

  PLAYER_1_NAME = "o"
  PLAYER_2_NAME = "x"

  def initialize
      config = Config.new
      @model = config.get_model
      @available_moves = config.get_available_moves
      @player_o = Player.new(name = PLAYER_1_NAME)
      @player_x = Player.new(name = PLAYER_2_NAME)
  end

  def turn_counter(first_turn = @player_o)
    turn_counter = []
  end


end
