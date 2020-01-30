class TechSpecificationSerializer
  def initialize(tech_specifications_object)
    @tech_specifications = tech_specifications_object
  end

  def to_serialized_json
    @tech_specifications.to_json(
      {
        :except  => [:created_at, :updated_at],
        :include => {
          :project_techs => {
            :except => [:created_at, :updated_at],
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
