require 'sidekiq/web'

Rails.application.routes.draw do
  resources :proponents
  devise_for :users
  get 'report', to: "dashboard#report"
  root 'dashboard#index'

  mount Sidekiq::Web => '/sidekiq'
end
