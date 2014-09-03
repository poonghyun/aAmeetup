Rails.application.routes.draw do
  root 'sessions#new'
  resources :events
  resources :users
  resource  :session, only: [:new, :create, :destroy]
end
