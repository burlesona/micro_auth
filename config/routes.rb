Rails.application.routes.draw do
  get 'login' => 'micro_auth/sessions#new', :as => 'login'
  get 'logout' => 'micro_auth/sessions#destroy', :as => 'logout'
  namespace :micro_auth do
  	resources :sessions, :only => [:new, :create, :destroy]
  end
end