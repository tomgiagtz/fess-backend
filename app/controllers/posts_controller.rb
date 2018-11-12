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
end
