require_relative 'config'
require_relative 'player'
require 'pry'

class Game

  attr_reader :player_1, :player_2, :model, :available_moves, :translations, :turn_counter

  PLAYER_1_NAME = "X"
  PLAYER_2_NAME = "O"

  def initialize
      config = Config.new
      @model = config.get_model
      @translations = config.get_translations
      @available_moves = config.get_available_moves
      @player_1 = Player.new(name = PLAYER_1_NAME)
      @player_2 = Player.new(name = PLAYER_2_NAME)
      @turn_counter = [player_1, player_2]
  end

  def change_turn
    @turn_counter = @turn_counter.reverse
  end

  def update_model(move)
    m = model
    t = translations
    t[move].each{ |key, value| m[key][t[move][key][:position]] = player }
  end

  def player
    turn_counter[0].name
  end

  def play(move)
    update_model(move)
    change_turn
  end

  # def select(turn_counter[0], move = [0,0])
  #   update_model
  # end





end
