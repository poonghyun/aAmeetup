Rails.application.routes.draw do
  root 'sessions#new'
  resources :events do
    resources :rsvps, only: [:create]
  end
  resources :chats
  resources :users
  resource  :session, only: [:new, :create, :destroy]
end
