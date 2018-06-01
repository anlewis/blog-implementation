class Api::V1::PostsController < ApplicationController
  before_action :authenticate_user!

  def create
    render json: Post.create(post_params)
  end

  private

  def post_params
    params.require(:post)
          .permit(:title, :content)
          .merge({user_id: current_user.id})
  end

end