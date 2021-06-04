class UsersController < ApplicationController
  def create
    @user = User.create!(user_params)
    session[:user_id] = @user.id
    json_response(@user, :created)
  end

  private

  def user_params
    params.permit(:name)
  end
end
