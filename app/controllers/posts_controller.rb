class PostsController < ApplicationController
  def index
  	render json: Post.all
  end

  def create
  	post = Post.new
  	post.content = post_params[:content]
  	post.location = ActiveRecord::Point.new(post_params[:location][:x], post_params[:location][:y])
  	post.save
  
  	render json: post
  end	



  private

  def post_params
  	params.require(:post).permit(:content, location: [:x, :y])
  end
end
