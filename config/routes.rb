SkiCondo::Application.routes.draw do
  resources :users
  resources :days

  get '/days/:id/visit' => 'visits#create', :as => 'visit'
  delete '/visits/:id' => 'visits#destroy', :as => 'unvisit'

  get '/login'  => 'sessions#new'
  get '/logout' => 'sessions#destroy'

  resources :sessions, :only => :create

  root 'days#index'
end
