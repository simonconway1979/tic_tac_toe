require_relative 'config'
require_relative 'player'
require_relative 'view'
require 'pry'

class Game

  attr_reader :player_1, :player_2, :model,
              :available_moves, :translations, :turn_counter,
              :view

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

  def check_move(move)
    move = :A1
    if @available_moves.include? move
      @available_moves -= [move]
    else
      raise("This is not a valid move. Please pick a cell value such as :A1, :B2, :C3 etc.")
    end
  end

  def play(move)
    check_move(move)
    update_model(move)
    change_turn
    view
  end

  def view
    view = View.new
    model = @model
    view.update_model(model)
    view.format
    view.show
  end


end
