class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.entry_id = params[:entry_id]
    
    @comment.save
    
    redirect_to entry_path(@comment.entry)
  end
  
  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end
end
