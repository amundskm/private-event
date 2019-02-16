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
    @hosted_events = @user.hosted_events
    @upcoming_events = @user.attendable_events.upcoming_events
    @past_events = @user.attendable_events.past_events
  end

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end
