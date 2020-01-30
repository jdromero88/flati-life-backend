class UserProjectSerializer
  def initialize(user_projects_object)
    @user_projects = user_projects_object
  end
  def to_serialized_json
    @user_projects.to_json(
      {
        :except => [:created_at, :updated_at],
      }
    )
  end
end
