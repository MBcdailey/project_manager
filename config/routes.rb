Rails.application.routes.draw do
  root 'dashboard#index'
  post '/new' => 'dashboard#new'
  get '/projects/:id' => 'dashboard#projects'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
