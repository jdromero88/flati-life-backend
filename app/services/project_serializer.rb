class ProjectSerializer
  def initialize(projects_object)
    @projects = projects_object
  end
  def to_serialized_json
    @projects.to_json(
      {
        :except => [:created_at, :updated_at],
        :include => {
          :users => {
            :except => [:password_digest, :created_at, :updated_at]
          },
          :project_techs => {
            :except => [:created_at, :updated_at],
            :include => {
              :tech_specification => {
                :except => [:created_at, :updated_at]
              }
            }
          }
        }
      }
    )
  end
end
