class Admin::SubjectsController < Admin::ApplicationController
	def new
    @subject = Subject.new
  end

  def show
    @subject = Subject.find(params[:id])
  end
  
  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    flash[:success] = "Materia #{@subject.name} eliminado exitosamente"
    redirect_to :back
  end

  def index
    @subject = Subject.order(id: :desc).all
  end
  
  def edit
    @subject = Subject.find(params[:id])
  end

  def update
  	@subject = Subject.find(params[:id])
     if @subject.update_attributes(subject_params)
       redirect_to subjects_path
     else
       flash[:danger] = "No se pudo actualizar la materia"
       render 'edit'
     end
  end
  
  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to subjects_path
    else
      flash[:danger] = "Hubo un problema al registrar la materia"
      render 'new'
    end
  end

  

  private

   def subject_params
     params.require(:subject).permit(:id,:name,:description,:area)
  end
end
