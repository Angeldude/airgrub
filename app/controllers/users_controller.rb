class UsersController < ApplicationController
  def new
  end

  def index
    @users = User.all
  end

  def show
  #  @user = User.find_by_id
  end
end
