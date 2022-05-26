Rails.application.routes.draw do
  get 'home/index'
  root "home#index"
  #root "articles#index"

  resources :articles do
    resources :comments
  end
end
