Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'
  scope "api" do
	  resources :comments
	  resources :assignments
	  resources :facilitators
	  resources :attendees
	  resources :sessions
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
