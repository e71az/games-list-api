class FavouritesController < ApplicationController
  before_action :set_game
  before_action :set_game_favourite, only: [:show, :update, :destroy]

  def index
    json_response(@game.favourites)
  end

  def show
    json_response(@favourite)
  end

  def create
    @game.create_favourite!(favourite_params)
    json_response(@game, :created)
  end

  def update
    @favourite.update(favourite_params)
    head :no_content
  end

  def destroy
    @favourite.destroy
    head :no_content
  end

  private

  def favourite_params
    params.permit(:game_id)
  end

  def set_game
    @game = Game.find(params[:game_id])
  end

  def set_game_favourite
    @favourite = @game.favourite if @game
  end
end
