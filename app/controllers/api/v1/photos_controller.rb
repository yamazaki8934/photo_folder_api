class Api::V1::PhotosController < ApplicationController
  def index
    photos = Photo.all
    render json: photos
  end

  def create
    photos = Photo.new(create_params)
    photos.save
  end

  private
    def create_params
      params.permit(
        :image_url,
        :person_id
      )
    end
end
