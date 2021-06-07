class GamesController < ApplicationController
  before_action :set_game, only: %i[show update destroy favourite]

  def index
    @games = Game.all
    json_response(@games)
  end

  def create
    @game = Game.create!(game_params)
    json_response(@game, :created)
  end

  def show
    json_response(@game)
  end

  def update
    @game.update(game_params)
    head :no_content
  end

  def destroy
    @game.destroy
    head :no_content
  end

  private

  def game_params
    params.permit(:name, :description, :price, :image)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
