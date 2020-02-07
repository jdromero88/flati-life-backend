class TechSpecification < ApplicationRecord
  has_many :project_techs
  has_many :projects, through: :project_techs
  accepts_nested_attributes_for :projects
end
