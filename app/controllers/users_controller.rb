class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, scope: current_user, scope_name: :current_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, serializer: UserExtendedSerializer
    else
      render json: @user.errors.full_messages, status: 400
    end
  end


  private

  def user_params
    params.permit(:name, :username, :photo_url, :password)
  end

end
