class UsersController < ApplicationController
  def index
    @users = User.all
    render json: UserSerializer.new(@users).to_serialized_json
  end

  def create
    # byebug
    @user = User.create!(user_strong_params)
    if @user
      render json: UserSerializer.new(@user).to_serialized_json
    else
      render json: {
        error:true,
        message: 'Username or email already taken.'
      }, status: :not_acceptable
    end
  end
  def login
    # byebug
    @user = User.find_by(username: params[:username])
    if @user
      if @user.authenticate(params[:password])
        render json: UserSerializer.new(@user).to_serialized_json
      else
        render json:{
          error: true,
          message: 'Incorrect username or password!'
        }, status: :unauthorized
      end
    else
      render json: {
        error: true,
        message: 'Incorrect username or password!'
      }, status: :unauthorized
    end
  end

  private
    def user_strong_params
      params.require(:user).permit(
        :first_name,
        :last_name,
        :username,
        :password,
        :email,
        :pronouns,
        :avatar,
        :bio,
        :fav_language,
        :course_name,
        :current_job,
        :before_flatiron,
        :cohort_id
      )
    end
end
