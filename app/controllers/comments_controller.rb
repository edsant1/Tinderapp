class CommentsController < ApplicationController

  def new
    @profile = Profile.find(params[:profile_id])
    @comment = Comment.new
  end

  def show
  end

  def create
    @profile = Profile.find(params[:profile_id])
    @comment = @profile.comments.new(comment_params)

    if @comment.save
      redirect_to profile
  end

  def update
  end

  def destroy
  end

  def edit
  end

  def new
  end
end
