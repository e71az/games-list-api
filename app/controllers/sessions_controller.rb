class SessionsController < ApplicationController
  def create
    @user = User.find_by!(name: params[:name])

    if @user
      session[:user_id] = @user.id
      json_response(@user, :ok)
    else
      json_response(nil, :not_found)
    end
  end
end
