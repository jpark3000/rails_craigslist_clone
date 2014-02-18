class SessionsController < ApplicationController
	def login
	end

	def login_authentication
		@user = User.find_by_email(params[:user][:email])
		if @user && @user.authenticate(params[:user][:password])
			session[:user_id] = @user.id
			redirect_to categories_path
		else
			render 'login'
		end
	end

	def logout
		session.clear
		redirect_to '/'
	end

end