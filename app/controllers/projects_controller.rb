class ProjectsController < ApplicationController
  def index
    projects = Project.all
    render json: ProjectSerializer.new(projects).to_serialized_json
  end
  def create
    project = Project.create!(project_strong_params)
    render json: ProjectSerializer.new(project).to_serialized_json
  end
  def show
    project = Project.find(params[:id])
    render json: ProjectSerializer.new(project).to_serialized_json
  end
  private
    def project_strong_params
      params.require(:project).permit(
        :name,
        :description,
        :image,
        :repository_url
      )
    end
end
