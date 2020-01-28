class Project < ApplicationRecord
  has_many :user_projects
  has_many :users, through: :user_projects
  has_many :project_techs
  has_many :tech_specifications, through: :project_techs
end
