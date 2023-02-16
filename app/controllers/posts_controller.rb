class PostsController < ApplicationController
  # skip_before_action :authorized_user
  before_action :find_post, only: [:show, :update, :destroy]

  def index
    render json: Post.all, status: :ok
  end

  def show
    render json: @post, status: :ok
  end

  def create 
    params[:user_id] = session[:user_id]
    render json: Post.create!(post_params), status: :created
  end

  def update
    render json: @post.update!(post_params), status: :ok
  end

  def destroy
    @post.destroy
    head :no_content
  end


  private
  def find_post
    @post = Post.find(params[:id])
  end

  def post_params 
    params.permit(:title, :content, :image, :user_id)
  end

end