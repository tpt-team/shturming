Rails.application.routes.draw do
  root 'recipients#index'

  resources :recipients
  resources :messages

  get 'admin' => 'admin/recipients#index'

  namespace :admin do
    root 'recipients#index'

    resources :recipients
    resources :messages
    resources :info
  end
end
