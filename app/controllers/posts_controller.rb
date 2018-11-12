class PostsController < ApplicationController
def index
    if request.headers["location"] == "true"
        lat = request.headers["latitude"].to_f
        long = request.headers["longitude"].to_f
        posts = Post.get_posts_by_location([lat, long])
        render json: posts
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
