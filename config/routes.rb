Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  root 'static#home'
  get '/users/:id' => 'users#show', as: "user"
  get '/signin' => 'sessions#new'
  post '/session' => 'sessions#create', as: "session"
  delete '/session' => 'sessions#destroy', as: "signout"
  get '/attractions' => 'attractions#index'
  get '/attractions/new' => 'attractions#new', as: "new_attraction"
  get '/attractions/:id' => 'attractions#show', as: "attraction"
  post '/attractions' => 'attractions#create'
  get '/attractions/:id/edit' => 'attractions#edit', as: "edit_attraction"
  patch '/attractions/:id' => 'attractions#update'
  post '/rides' => "rides#create", as: "rides"

end
