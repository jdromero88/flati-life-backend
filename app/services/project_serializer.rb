class ProjectSerializer
  def initialize(projects_object)
    @projects = projects_object
  end

  def to_serialized_json
    @projects.to_json(
      {
        :except => [:created_at, :updated_at],
        :include =>{
          :users => {
            :only => [:id, :username]
          },
          :tech_specifications => {
            :only => [:id, :name]
          }
        }
      }
    )
    # @own_events.as_json(
    #   include: [:attendees, :user, :start_times, :end_times],
    #   methods: :created_date
  end

  def to_serialized_json_with_users
    @projects.to_json(
      {
        :except => [:created_at, :updated_at],
        :include =>{
          :users => {
            :only => [:id]
          }
        }
      }
    )
  end

  def to_serialized_json_with_users_and_project_techs
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
