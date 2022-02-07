class UsersController < ApplicationController
  def index
    if user_signed_in?
      @data = User.all
    else
      redirect_to new_user_session_path
    end
  end

  def new; end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      redirect_to root_path
    end
  end

  private

  def user_params
    params.permit(:fname, :image)
  end
end
