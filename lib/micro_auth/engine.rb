require 'micro_auth/application_controller'

module MicroAuth
	class Engine < Rails::Engine
		initializer 'micro_auth.app_controller' do |app|
			ActiveSupport.on_load(:action_controller) do
				extend MicroAuth::ApplicationController::ClassMethods
				include MicroAuth::ApplicationController::InstanceMethods
				ActionController::Base.helper_method :admin?
			end
		end
	end
end