class FollowsController < ApplicationController
  before_action :require_user, only: [:create]


  # if else?
  # it's not changing follow
  def create
    current_user.toggle_follow!(User.find_by(id: params[:id]))
    if current_user.follows?(User.find_by(id: params[:id]))
      render json: ["#{current_user.username} is now following #{User.find_by(id: params[:id]).username}."]
    else
      render json: ["#{current_user.username} has unfollowed #{User.find_by(id: params[:id]).username}."]
    end
  end

end
