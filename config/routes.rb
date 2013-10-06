SkiCondo::Application.routes.draw do
  resources :users
  resources :days

  root 'days#index'
end
