class LikesController < ApplicationController

  def create
    photo_id = params["photo_id"]
    @like = Like.create(photo_id: photo_id)
    redirect_to photos_path
  end

end
