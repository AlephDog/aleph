class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path
    else 
      flash[:danger] = 'Hubo un problema para actualizar los datos' 
      render 'edit'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      flash[:danger] = 'Hubo un problema en el registro'
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = "Usuario #{@user.username} eliminado exitosamente"
    redirect_to :back
  end

  def index
    @users = User.order(id: :desc).all 
  end

  private 
  def user_params
    params.require(:user).permit(:fullname, :username, :email, :password, :description, :school, :interests)
  end
end
