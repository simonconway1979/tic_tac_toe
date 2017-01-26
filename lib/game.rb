require_relative 'config'
require_relative 'player'

class Game

    attr_reader :player_o, :player_x, :model, :available_moves

  def initialize
      config = Config.new
      @model = config.get_model
      @available_moves = config.get_available_moves
      @player_o = Player.new
      @player_x = Player.new
  end



end
