class TechSpecification < ApplicationRecord
  has_many :project_techs
  has_many :projects, through: :project_techs
end
