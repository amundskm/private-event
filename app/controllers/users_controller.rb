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
    @upcoming_events = @user.upcoming_events
    @past_events = @user.past_events
  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
