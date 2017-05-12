Rails.application.routes.draw do
  root to: 'trips#index'
  devise_for :users
  resources :users, only: [:show]
  resources :trips do
    resources :tickets
  end
end
