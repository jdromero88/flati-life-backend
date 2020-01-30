class CohortSerializer
  def initialize(cohorts_object)
    @cohorts = cohorts_object
  end
  def to_serialized_json
    @cohorts.to_json(
      {
        :except => [:created_at, :updated_at],
        :include => {
          :users => {
            :except => [:password_digest, :created_at, :updated_at]
          }
        }
      }
    )
  end
end
