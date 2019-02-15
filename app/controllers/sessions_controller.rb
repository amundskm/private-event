class SessionsController < ApplicationController
  include SessionsHelper

  def create
    user = User.find_by(name: params[:sessions][:name].downcase)
    if user
      log_in user
      redirect_to user
    else
      flash[:warning] = "No user by that name."
      render 'new'
    end
  end

  def new
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
