class CommentsController < ApplicationController
  def create
    newComment = Comment.new(comment_params)
    if newComment.save
      render status: 200, json: newComment
    else
      render status: 304
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    render json: comment
  end

  def edit
    comment = Comment.find(params[:id])
    if comment.update(comment_params)
      render status: 200, json: comment
    else
      render status: 304
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end
end
