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

  def favourite
    type = params[:type]
    user = User.find_by(name: params[:name])
    if type == "favourite"
      user.favourites << @game
      json_response(user.favourites)
    elsif type == "unfavourite"
      user.favourites.delete(@game)
      json_response(user.favourites)
    else
      json_response(:forbidden)
    end
  end

  private

  def game_params
    params.permit(:name, :description, :price, :image)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
