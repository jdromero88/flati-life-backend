class Project < ApplicationRecord
  has_many :user_projects, dependent: :destroy
  has_many :users, through: :user_projects
  has_many :project_techs, dependent: :destroy
  has_many :tech_specifications, through: :project_techs
  accepts_nested_attributes_for :users, :tech_specifications

  def map_user_id
    # byebug
    return self.user_projects.map{|user_project| user_project.user_id}
  end
end
