class FavouritesController < ApplicationController
  def index
    @favourites = User.find_by!(user_name_param).favourites
    json_response(@favourites)
  end

  def create
    user = User.find_by(user_name_param)
    game = Game.find(params[:game_id])
    user.favourites << game
    json_response(user.favourites, :ok)
  rescue StandardError => e
    json_response(e, :forbidden)
  end

  def destroy
    user = User.find_by(user_name_param)
    game = Game.find(params[:game_id])

    if user.favourites.delete(game)
      json_response(user.favourites)
    else
      json_response(:forbidden)
    end
  end

  private

  def favourite_params
    params.permit(:type, :name, :game_id)
  end

  def user_name_param
    params.permit(:name)
  end

  def favourite_game_id_param
    params.permit(:game_id)
  end
end
