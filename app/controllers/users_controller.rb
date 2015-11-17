class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)

  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash[:notice] = "#{@user.name} was successfully updated."
      redirect_to @user
    else
      render :edit
    end
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy

    @user = User.all
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end


end
