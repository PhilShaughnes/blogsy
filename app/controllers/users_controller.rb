class UsersController < ApplicationController

  def index
    @user = User.all
    render json: @user
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors.full_messages, status: 400
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :bio)
  end
end
