# frozen_string_literal: true

# User controllers
class UsersController < ApplicationController
  def new; end

  def create; end

  def index; end

  def edit; end

  def update; end

  def show; end

  def destroy; end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password,
                                 :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
