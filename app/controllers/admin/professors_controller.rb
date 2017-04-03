class Admin::ProfessorsController < Admin::ApplicationController
	def new
    @professor = Professor.new
  end

  def show
    @professor = Professor.find(params[:id])
  end
  
  def destroy
    @professor = Professor.find(params[:id])
    @professor.destroy
    flash[:success] = "Profesor #{@professor.username} eliminado exitosamente"
    redirect_to :back
  end

  def index
    @professors = Professor.order(id: :desc).all
  end
  
  def edit
    @professor = Professor.find(params[:id])
  end

  def update
  	@professor = Professor.find(params[:id])
     if @professor.update_attributes(professor_params)
       redirect_to professors_path
     else
       flash[:danger] = "No se pudo actualizar tu información"
       render 'edit'
     end
  end
  
  def create
    @professor = Professor.new(professor_params)
    if @professor.save
      redirect_to professors_path
    else
      flash[:danger] = "Hubo un problema al registrar al profesor."
      render 'new'
    end
  end

  

  private

   def professor_params
     params.require(:professor).permit(:id,:fullname,:username,:email,:password,:biography,:school,:interests,:like,:dislike,:help,:clarity,:grade)
  end
end
