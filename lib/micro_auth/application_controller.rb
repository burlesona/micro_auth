module MicroAuth
	module ApplicationController
		module ClassMethods
			# Add class methods here in the future if needed.
		end

		module InstanceMethods

			# Simple filter method to verify user is admin in controllers.
			def authenticate
				unless admin?
					session[:target] = request.path
					redirect_to login_path
				end
			end

			# Simple method to see if user is authenticated as admin.
			def admin?
				session[:admin] == true
			end
		end
	end
end