Rails.application.routes.draw do
  root to: 'trips#index'
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks"}
  resources :users
  resources :trips do
    resources :tickets
  end
end
