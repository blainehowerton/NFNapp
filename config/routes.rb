Rails.application.routes.draw do
  get "contacts/index"
  get 'home/index'
  root "home#index"

  resources :articles do
  resources :comments
  resources :contacts
  end
end
