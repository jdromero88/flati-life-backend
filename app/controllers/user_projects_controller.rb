class UserProjectsController < ApplicationController
  def index
    user_projects = UserProject.all
    render json: UserProjectSerializer.new(user_projects).to_serialized_json
  end

end
