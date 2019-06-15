Rails.application.routes.draw do
  resources :comments
  resources :assignments
  resources :facilitators
  resources :attendees
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
