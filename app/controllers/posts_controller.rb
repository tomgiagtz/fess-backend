class PostsController < ApplicationController
def index
    puts request.headers["location"]

    if request.headers["location"] == "true"
        location = [request.headers["latitude"].to_f, request.headers["longitude"].to_f]
        if request.headers["nearest"]
          render json: Post.get_nearest_posts(location)
        else
          render json: Post.get_posts_by_location(location)
        end
    else
        render json: Post.all
    end
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
