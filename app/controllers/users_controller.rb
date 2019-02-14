class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
  if @user.save
    flash[:info] = "Signed In."
    redirect_to root_url
  else
    render 'new'
  end
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
end
