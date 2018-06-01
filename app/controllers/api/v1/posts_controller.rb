class Api::V1::PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: Post.all
  end

  def show
    render json: Post.find(params[:id])
  rescue
    render status: 404
  end

  def create
    render json: Post.create(post_params)
  rescue
    render status: 400
  end

  def update
    render json: Post.update(param[:id], post_params)
  rescue
    render status: 400
  end

  def destroy
    Post.find(params[:id]).destroy
  rescue
    render status: 404
  end

  private

  def post_params
    params.require(:post)
          .permit(:title, :content)
          .merge({user_id: current_user.id})
  end
end