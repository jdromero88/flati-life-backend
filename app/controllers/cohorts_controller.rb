class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
    render json: CohortSerializer.new(@cohorts).to_serialized_json
  end
end
