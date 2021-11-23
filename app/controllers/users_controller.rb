class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.service = @service
    if @user.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    redirect_to service_path(@user.service)
  end

  private

  def user_params
    params.require(:user).permit(:comment, :movie_id)
  end

  def set_user
    @user = user.find(params[:id])
  end

  def set_service
    @service = Service.find(params[:service_id])
  end
end
