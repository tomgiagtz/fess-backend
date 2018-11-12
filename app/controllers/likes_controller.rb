class LikesController < ApplicationController
    def create
        like = Like.new(like_params)
        if (like.post.likes.find_by(user_id: like.user_id))
            status = 304
            puts 'not liked'
        else 
            status = 200
            like.save
        end

        render status: status, json: like.post
    end

    def update
        like = Like.find(params[:id])
        like.upvote = !like.upvote
        like.save

        render json: like.post
    end

    def destroy
        like = Like.find(params[:id]).destroy

        render json: like.post
    end

    private
    def like_params
        params.require(:like).permit(:upvote, :user_id, :post_id)
    end
end
