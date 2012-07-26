class MicroAuth::SessionsController < ApplicationController
	def new
	end

	def create
		if params[:login] == LOGIN_NAME && params[:pass] == PASSWORD
			session[:admin] = true
			redirect_to root_or_back, :notice => 'Logged in successfully.'
		else
			flash.now.alert = 'Login attempt failed.'
			render 'new'
		end
	end

	def destroy
		reset_session
		session[:admin] = false
		session[:target] = nil
		redirect_to root_path, :notice => 'Logged out.'
	end
	
	private
	
		def root_or_back
			default_path = admin_path || root_path
			target = session[:target] || default_path
			session[:target] = nil
			target
		end

end