class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/routines/#{comment.routine.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, routine_id: params[:routine_id])
  end
end
