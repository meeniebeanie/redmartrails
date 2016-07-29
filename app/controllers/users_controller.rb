class UsersController < ApplicationController

  def index
    @users = User.all?
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(permitted_user_params)
    respond_to do |format|
      if @user.save
        # log_in(@user)
        flash[:success]= 'User was successfully created.'
        format.html { redirect_to @user }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def permitted_user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
