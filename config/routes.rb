Rails.application.routes.draw do
  root to: 'trips#index'
  devise_for :users
  resources :trips do
    resources :tickets
  end
end
