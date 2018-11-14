class CommentsController < ApplicationController
  def create
    newComment = Comment.new(comment_params)
    if newComment.save
      status = 200
      render status: status, json: newComment
    else
      render status: 304
    end

  end

  def destroy
  end

  def edit
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end
end
