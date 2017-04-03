class SessionsController < ApplicationController
	#before_action :logged_in_author, only: [:destroy]

	def new
		#redirect_to admin_dashboard_index_path if current_author
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase )
		if user && user.authenticate(params[:session][:password])
			log_in user
			flash[:success] = "Bienvenido a Aleph!"
			render_right_view
		else
			flash[:alert] = "Invalid email/password combination"
			render 'new'
		end
	end

	def destroy
		log_out
		redirect_to root_url
	end
end
