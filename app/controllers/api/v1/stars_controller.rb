class Api::V1::StarsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:index, :create]

  def index
    stars = Star.all
    render json: stars
  end

  def create
    stars = Star.new(create_params)

    # エラー処理
    unless stars.save
      @error_message = [stars.errors.full_messages].compact 
    end
  end

  private
    def create_params
      params.require(:star).permit(:name)
      # params.permit(
      #   :name
      # )
    end
end
