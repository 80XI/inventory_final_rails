Rails.application.routes.draw do
  # get 'purchases/index'
  # get 'vendors/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "categories#index"

  resources :categories do
    resources :items
  end

  resources :items, :vendors, :purchases
  # Defines the root path route ("/")
  # root "articles#index"
end
