class CommentsController < ApplicationController
  before_action :set_comment, only:[:destroy]

  def index
    @comments = Comments.all
  end

  def new
    @profile = Profile.find(params[:profile_id])
    @comment = Comment.new
  end

  def create
    @profile = Profile.find(params[:profile_id])
    @comment = @profile.comments.new(comment_params)
    if @comment.save
      redirect_to profile_url
    else
      render :new
    end
  end

  def destroy
    @comment.destroy
    redirect_to profile_path, notice: "comment succesfully deleted"
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body, :profile_id)
  end

  def set_comment
    @profile = Profile.find(params[:profile_id])
    @comment = Comment.find(params[:id])
  end
end
