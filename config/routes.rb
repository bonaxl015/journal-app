Rails.application.routes.draw do
  get 'categories/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'categories#index'
  resources :categories
end