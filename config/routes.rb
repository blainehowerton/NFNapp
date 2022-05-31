Rails.application.routes.draw do
  root "home#index"
  get 'home/index'
  get 'contacts/index'
  #get 'contacts/index', to: "contacts#index"

  resources :contacts
  resources :articles do
  resources :comments
end

  
end
