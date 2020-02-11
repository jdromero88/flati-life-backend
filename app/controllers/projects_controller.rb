class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render json: ProjectSerializer.new(@projects).to_serialized_json
  end

  def create
    @project = Project.create!(project_strong_params)
    user_project = UserProject.create!(project_id:@project.id, user_id:params[:user])
    if params[:collaborator_id]
      user_project = UserProject.create!(project_id:@project.id, user_id:params[:collaborator_id])
    end
    if params[:technologies]
      # byebug
      params[:technologies].length.times do |i|
        project_tech = ProjectTech.create!(project_id:@project.id, tech_specification_id:params[:technologies][i])
      end
    end
    render json: UserProjectSerializer.new(user_project).to_serialized_json
  end

  def show
    @project = Project.find(params[:id])
    render json: ProjectSerializer.new(@project).to_serialized_json
  end

  def destroy
    # byebug
    @project = Project.find(params[:id])
    @project.destroy
    render json: {
      message: 'success'
    }
  end

  private
    def project_strong_params
      params.require(:project).permit(
        :name,
        :description,
        :image,
        :repository_url,
        :user_projects_attributes,
        :technologies => []
      )
    end
end
