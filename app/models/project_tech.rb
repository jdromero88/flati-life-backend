class ProjectTech < ApplicationRecord
  belongs_to :project
  belongs_to :tech_specification
end
