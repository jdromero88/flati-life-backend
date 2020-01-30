class ProjectTechSerializer
  def initialize(project_teches_object)
    @project_teches = project_teches_object
  end
  def to_serialized_json
    @project_teches.to_json(
      {
        :except => [:created_at, :updated_at],
      }
    )
  end
end
