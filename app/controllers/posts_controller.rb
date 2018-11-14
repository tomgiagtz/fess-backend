class PostsController < ApplicationController
def index
    puts request.headers["location"]

    if request.headers["location"] == "true"
        lat = request.headers["latitude"].to_f
        long = request.headers["longitude"].to_f
        posts = Post.get_posts_by_location([lat, long])
        if request.headers["nearest"]
          posts2 = Post.get_nearest_posts([lat, long])
          render json: posts2
        else
          render json: posts.reverse
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
