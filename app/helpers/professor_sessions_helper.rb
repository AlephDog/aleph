module ProfessorSessionsHelper
	
	def log_in_professor(professor)
		session[:professor_id] = professor.id
	end
	
	def current_professor
		@current_professor ||= Professor.find_by(id: session[:user_id])
	end
	
	def logged_in_professor?
		!current_professor.nil?
	end
	
	def log_out_professor
		session.delete(:professor_id)
		@current_professor = nil
	end
	
	def current_professor?(professor)
		professor == current_professor
	end
end
