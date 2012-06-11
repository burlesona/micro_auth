Rails.application.routes.draw do
  #match "/#{HighVoltage.content_path}*id" => 'high_voltage/pages#show', :as => :page, :format => false
  get 'login' => 'micro_auth/sessions#new', :as => 'login'
  get 'logout' => 'micro_auth/sessions#destroy', :as => 'logout'
  namespace :micro_auth do
  	resources :sessions, :only => [:new, :create, :destroy]
  end
end