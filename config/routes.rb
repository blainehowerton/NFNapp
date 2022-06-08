Rails.application.routes.draw do
  devise_for :contacts
  root "home#index"
  get 'home/index'
  get 'contacts/index'
  get 'articles/index'
  get 'editions/index'
  get 'sections/index'

  resources :contacts
  resources :editions
  resources :sections
  resources :articles do
    resources :comments


end

  
end
