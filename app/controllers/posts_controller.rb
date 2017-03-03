class PostsController < ApplicationController
  before_action :require_user, only: [:create]

  def index
    if current_user
      @posts = Post.timeline(current_user)
    else
      @posts = Post.order(created_at: :desc)
    end
    render json: @posts
  end

  # scope
  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      render json: @post, scope: current_user, scope_name: :current_user
    else
      render json: @post.errors.full_messages, status: 400
    end
  end

  private

  def post_params
    params.permit(:body)
  end


end
