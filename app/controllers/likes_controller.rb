class LikesController < ApplicationController

  def create
    @like = Like.create(like_params)
    redirect_to photos_path
  end

  private

  def like_params
    params.require(:like).permit(:photo_id)
  end

end
