module SessionsHelper
	
	def render_right_view
		if user.admin?
			redirect_to root_url#admin_dashboard_index_path
		else
			redirect_to root_url
		end 
	end
	
	def log_in_user(user)
		session[:user_id] = user.id
	end
	
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end
	
	def logged_in_user?
		!current_user.nil?
	end
	
	def log_out_user
		session.delete(:user_id)
		@current_user = nil
	end
	
	def current_user?(user)
		user == current_user
	end
end
