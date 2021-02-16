class UsersController < ApplicationController
  def user; end

  def new
    @user = User.new
  end

  def create
    @user = User.new

    
  end

  def show
    @user = User.all
  end
end
