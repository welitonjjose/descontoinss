require 'sidekiq/web'

Rails.application.routes.draw do
  root 'dashboard#index'

  mount Sidekiq::Web => '/sidekiq'
end
