class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  	  flash[:success] = 'Bienvenido a aleph, has iniciado sesion'
  	  login(user)
  	  # Esta debe ser una ruta para mandar al indice de materias del usuario
  	  redirect_to root_path
  	else
  	  flash[:danger] = 'Hubo un problema con tu email/contraseña'
  	  render 'new'
  	end
  end

  def destroy
  	logout
  	redirect_to root_path
  end
end
