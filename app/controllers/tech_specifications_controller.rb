class TechSpecificationsController < ApplicationController
  def index
    @tech_specifications = TechSpecification.all
    render json: TechSpecificationSerializer.new(@tech_specifications).to_serialized_json
  end
  def create
    # byebug
    @tech_specification = TechSpecification.create!(tech_strong_params)
    render json: TechSpecificationSerializer.new(@tech_specification).to_serialized_json
  end

  private
    def tech_strong_params
      params.require(:technology).permit(
        :name,
        :description,
        :website
      )
    end
end
