class PhotosController < ApplicationController

  def index
    @photo = Photo.find
  end

end
