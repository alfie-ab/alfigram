class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photo_params)
    if @photo.save
      redirect_to photos_path
    else
      redirect_to new_photo_path
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end


  private

  def photo_params
    params.require(:photo).permit(:image, :caption)
  end

end
