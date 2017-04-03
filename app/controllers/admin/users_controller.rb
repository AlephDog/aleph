class Admin::UsersController < Admin::ApplicationController
	#def new
   # @user = User.new
  #end

  def show
    @user = User.find(params[:id])
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
  
  # def edit
  #   @user = User.find(params[:id])
  # end

  # def update
  #   @user = User.find(params[:id])
  #   if @user.update_attributes(user_params)
  #     redirect_to users_path
  #   else
  #     flash[:danger] = "No se pudo actualizar tu información"
  #     render 'edit'
  #   end
  # end
  
  #def create
   # @user = User.new(user_params)
    #if @user.save
     # redirect_to users_path
    #else
     # flash[:danger] = "Hubo un problema al registrar"
      #render 'new'
    #end
  #end

  

  # private

  # def user_params
  #   params.require(:user).permit(:id,:fullname,:username,:email,:password,:description,:school,:interests)
  # end
end
