class SessionsController < ApplicationController
  def session; end

  def create
    @user = User.find_by(name: params[:session][:user])
    @user ||= User.find(params[:session][:user].to_i)

    if @user
      session[:user_id] = @user.id
      session[:username] = @user.name
      redirect_to user_path(@user)
    else
      flash.now[:danger] = 'There was something wrong with the login information'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'You have successfully logged out'
    redirect_to root_path
  end
end
