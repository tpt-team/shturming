Rails.application.routes.draw do
  root 'recipients#index'

  resources :recipients
  resources :messages
end
