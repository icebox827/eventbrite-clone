class UsersController < ApplicationController
  def user; end

  def new
    @user = User.new
    # redirect_to user_path(current_user) if logged_in?
  end

  def create
    @user = User.create(sign_up_params)
    if @user.save
      flash[:notice] = 'User created successfully'
      session[:user_id] = @user.id
      session[:username] = @user.name
      redirect_to user_path(@user)
    else
      flash[:alert] = 'User not created, please try again'
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def sign_up_params
    params.require(:user).permit(:name)
  end
end
