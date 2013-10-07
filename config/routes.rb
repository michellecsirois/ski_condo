SkiCondo::Application.routes.draw do
  resources :users
  resources :days

  get '/login'  => 'sessions#new'
  get '/logout' => 'sessions#destroy'

  resources :sessions, :only => :create

  root 'days#index'
end
