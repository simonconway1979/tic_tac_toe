require_relative 'config'
require_relative 'player'

class Game

  attr_reader :player_o, :player_x, :model, :available_moves, :translations

  PLAYER_1_NAME = "o"
  PLAYER_2_NAME = "x"

  def initialize
      config = Config.new
      @model = config.get_model
      @translations = config.get_translations
      @available_moves = config.get_available_moves
      @player_o = Player.new(name = PLAYER_1_NAME)
      @player_x = Player.new(name = PLAYER_2_NAME)
  end

  def turn_counter(first_turn = player_o)
    turn_counter = [player_o, player_x]
    turn_counter.reverse if first_turn = player_x
  end

  def update_model(move)
  end



  # def select(turn_counter[0], move = [0,0])
  #   update_model
  # end





end
