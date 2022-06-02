Rails.application.routes.draw do
  root "home#index"
  get 'home/index'
  get 'contacts/index'
  get 'articles/index'
  get 'editions/index'

  resources :contacts
  resources :editions
  resources :articles do
  resources :comments
end
  
end
