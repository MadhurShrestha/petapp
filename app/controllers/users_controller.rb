class UsersController < ApplicationController
  before_action :authenticate_user!
  def dashboard
  end

  def update
    @user = current_user

    if @user.update_attributes(current_user_params)
      flash[:notice] = "Saved successfully"
    else
      flash[:alert] = "Oopsie! Something went wrong :("
    end
    redirect_to dashboard_path

  end

  private
  def current_user_params
  end
end
