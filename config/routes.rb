require 'sidekiq/web'

Rails.application.routes.draw do
  resources :proponents
  devise_for :users
  root 'dashboard#index'

  mount Sidekiq::Web => '/sidekiq'
end
