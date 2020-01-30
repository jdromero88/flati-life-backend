class TechSpecificationsController < ApplicationController
  def index
    tech_specifications = TechSpecification.all
    render json: TechSpecificationSerializer.new(tech_specifications).to_serialized_json
  end
end
