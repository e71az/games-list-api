class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update, :destroy]

  def index
    @games = Game.all
  end

  def create
    @game = Game.create!(game_params)
    json_response(@game, :created)
  end

  def show
    json_response(@game)
  end

  def update
    @todo.update(todo_params)
    head :no_content
  end

  def destroy
    @todo.destroy
    head :no_content
  end

  private

  def game_params
    params.permit(:game, :description, :price, :image)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
