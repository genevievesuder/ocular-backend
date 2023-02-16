class FavoritesController < ApplicationController
  before_action :find_favorite, only: [:show, :destroy]
  
  def index 
    render json: Favorite.all, status: :ok
  end

  def create
    params[:user_id] = session[:user_id]
    render json: Favorite.create!(favorite_params), status: :created
  end

  def show 
    render json: @favorite, status: :ok
  end

  def destroy
    Favorite.where(user_id: session[:user_id], definition_id:params[:id]).destroy_all
    head :no_content
  end

  private

    def find_favorite
      @favorite = Favorite.find(params[:id])
    end

    def favorite_params
      params.permit(:user_id, :definition_id)
    end
end
