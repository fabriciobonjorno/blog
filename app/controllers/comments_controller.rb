class CommentsController < ApplicationController
  def create
    comment = Comment.create!(comments_params)
  end

  private

  def comments_params
    params.require(:comment).permit(:post_id, :author, :body)
  end
end