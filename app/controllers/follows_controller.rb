class FollowsController < ApplicationController
  before_action :require_user


  def create
    target = User.find_by(id: params[:id])
    current_user.toggle_follow!(target)
    if current_user.follows?(target)
      render json: ["#{current_user.username} is now following #{target.username}."]
    else
      render json: ["#{current_user.username} has unfollowed #{target.username}."]
    end
  end

end
