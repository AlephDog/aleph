class ProfessorSessionsController < ApplicationController
	def new
		#redirect_to admin_dashboard_index_path if current_author
	end

	def create
		professor = Professor.find_by(email: params[:session][:email].downcase )
		if professor && professor.authenticate(params[:session][:password])
			log_in_professor professor
			flash[:success] = "Bienvenido a Aleph!"
			redirect_to professor_path(professor)
		else
			flash[:alert] = "Invalid email/password combination"
			render 'new'
		end
	end

	def destroy
		log_out_professor
		redirect_to root_url
	end
end
