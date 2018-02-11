class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to new_user_path
      else
        flash[:error] = "Please enter full credentials"
        render "/pages/index"
      end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :full_name)
    end
end
