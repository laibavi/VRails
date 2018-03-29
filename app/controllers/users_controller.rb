class UsersController < ApplicationController
  def new
     @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t "user_controller"
      log_in @user
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find_by id: params[:id]
    return if @user
    flash[:error] = t "not_found"
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :password, :password_confirmation
  end

end
