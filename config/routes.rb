Rails.application.routes.draw do
  devise_for :users

  get '/', to: 'home#index'
  get 'reports/index', to: 'reports#index'
  get 'contacts/index', to: 'contacts#index'
  get 'articles/index', to: 'articles#index'
  get 'editions/index', to: 'editions#index'
  get 'sections/index', to: 'sections#index'
  get 'users/index', to: 'users#index'
  get '/user/details', to: 'users#details'

  resources :reports
  resources :contacts
  resources :editions
  resources :sections
  resources :users
  resources :articles do
    resources :comments


end

  
end
