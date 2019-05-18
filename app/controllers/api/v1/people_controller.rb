class Api::V1::GiantsController < ApplicationController
  def index
    people = Person.all
    render json: people
  end

  def create
    people = Person.new(create_params)
    people.save
  end

  private
    def create_params
      params.permit(
        :name
      )
    end
end
