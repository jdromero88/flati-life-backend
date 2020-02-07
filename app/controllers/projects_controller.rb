class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render json: ProjectSerializer.new(@projects).to_serialized_json
  end
  def create
    @project = Project.create!(project_strong_params)
    byebug
    user_project = UserProject.create!(project_id:@project.id, user_id:params[:user][:id])
    render json: ProjectSerializer.new(@project).to_serialized_json
  end
  def show
    @project = Project.find(params[:id])
    render json: ProjectSerializer.new(@project).to_serialized_json
  end
  private
    def project_strong_params
      params.require(:project).permit(
        :name,
        :description,
        :image,
        :repository_url,
        :user_projects_attributes
      )
    end
end
