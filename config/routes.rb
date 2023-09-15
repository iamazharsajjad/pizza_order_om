Rails.application.routes.draw do
  resources :orders do
    resources :orderlists
    patch 'complete_order'
  end
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end