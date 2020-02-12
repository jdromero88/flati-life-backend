class UserSerializer
  def initialize(users_object)
    @users = users_object
  end

  def to_serialized_json
    @users.to_json(
      {
        :except => [:password_digest, :updated_at,:cohort_id],
        :include => {
          :cohort => {
            :except => [:created_at, :updated_at]
          },
          :user_projects => {
            :except => [:created_at, :updated_at, :user_id, :project_id],
            :include => {
              :project => {
                :except => [:created_at, :updated_at]
              }
            }
          }
        }
      }
    )
  end

  def to_serialized_json_when_refactor
    # use when is time to refactor to have one source of true
    @users.to_json(
      {
        :except => [:password_digest, :updated_at,:cohort_id],
        :include => {
          :cohort => {
            :except => [:created_at, :updated_at]
          },
          :projects => {
            :except => [:created_at, :updated_at]
          }
        }
      }
    )
  end

  def to_serialized_json_bk
    @users.to_json(
      {
        :except => [:password_digest, :updated_at,:cohort_id],
        :include => {
          :cohort => {
            :except => [:created_at, :updated_at]
          },
          :user_projects => {
            :except => [:created_at, :updated_at, :user_id, :project_id],
            :include => {
              :project => {
                :except => [:created_at, :updated_at]
              }
            }
          }
        }
      }
    )
  end
end
