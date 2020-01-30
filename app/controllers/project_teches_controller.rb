class ProjectTechesController < ApplicationController
  def index
    project_teches = ProjectTech.all
    render json: ProjectTechSerializer.new(project_teches).to_serialized_json
  end
end
