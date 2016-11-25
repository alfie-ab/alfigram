class CommentsController < ApplicationController

  def new
  end

  def create
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.create(comment_params)
    if @comment.save
      redirect_to photos_path
    else
      redirect_to new_photo_comment_path
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:description)
  end

end
