class FavouritesController < ApplicationController
  before_action :set_favourite, only: %i[show update destroy]

  def index
    @favourites = User.find_by!(name: params[:name]).favourites
    json_response(@favourites)
  end

  def show
    json_response(@favourite)
  end

  def create
    @type = params[:type]
    @user = User.find_by(name: params[:name])
    @game = Game.find(params[:game_id])

    case @type
    when 'favourite'
      @user.favourites << @game
      json_response(@user.favourites)
    when 'unfavourite'
      @user.favourites.delete(@game)
      json_response(@user.favourites)
    else
      json_response(:forbidden)
    end
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
    params.permit(:type, :name, :game_id)
  end

  def set_favourite
    @favourite = Favourite.find(params[:game_id])
  end
end
