Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pages, only: %i[home home_user faq]
  resources :profiles, only: %i[edit update]
  resources :dogs, only: %i[index show edit update] do 
    resources :likes, only: %i[create]
  end

  resources :matches, only: %i[index show] do
    resources :messages, only: %i[create]
    resources :meetings, only: %i[index new create]
  end
  
  resources :places, only: %i[index new create] do
    resources :walks, only: %i[create]
    resources :reviews, only: %i[new create]
  end
end
