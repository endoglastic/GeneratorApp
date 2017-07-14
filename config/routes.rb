Rails.application.routes.draw do
  resources :single_housings
  resources :categories
  resources :blogs
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
