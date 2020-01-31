class UserSerializer
  def initialize(users_object)
    @users = users_object
  end

  def to_serialized_json
    @users.to_json(
      {
        :except => [:password_digest, :updated_at],
        :include => {
          :cohort => {
            :except => [:created_at, :updated_at]
          },
          :user_projects => {
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






# def to_serialized_json
#   @sighting.to_json(:include => {
#     :bird => {:only => [:name, :species]},
#     :location => {:only => [:latitude, :longitude]}
#   }, :except => [:updated_at])
# end