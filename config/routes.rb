Rails.application.routes.draw do
  resources :users
  resources :tasks
  resources :projects
  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
