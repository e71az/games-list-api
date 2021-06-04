class FavouritesController < ApplicationController
  before_action :set_favourite, only: %i[show update destroy]

  def index
    @favourites = User.find_by(name: params[:name]).favourites
    json_response(@favourites)
  end

  def show
    json_response(@favourite)
  end

  def create
    @favourite = Favourite.create!(favourite_params)
    json_response(@favourite, :created)
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

  def set_favourite
    @favourite = Favourite.find(params[:game_id])
  end
end
