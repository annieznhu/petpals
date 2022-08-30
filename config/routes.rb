Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pages, only: %i[home home_user faq]
  resources :profiles, only: %i[edit upgrade]
  resources :dogs, only: %i[index show edit upgrade]
  resources :likes, only: %i[create]
  resources :matches, only: %i[index show]
  resources :messages, only: %i[create]
  resources :meetings, only: %i[index new create]
  resources :walks, only: %i[create]
  resources :places, only: %i[index new create]
  resources :reviews, only: %i[new create]
end
