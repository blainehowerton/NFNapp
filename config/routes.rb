Rails.application.routes.draw do
  root "home#index"
  get 'home/index'
  get 'contacts/index', to: "contacts#index"

  resources :articles do
  resources :comments
  resources :contacts
  end
  
end
