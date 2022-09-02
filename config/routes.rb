Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: "pages#home", as: :user_root
  end
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resource :profile, only: %i[edit update]

  resources :dogs, only: %i[index show edit update] do
    resources :likes, only: %i[create]
  end

  resources :matches, only: %i[index show] do
    resources :messages, only: %i[create]
    resources :meetings, only: %i[new create]
  end

  resources :meetings, only: %i[index]

  resources :places, only: %i[index new create] do
    resources :walks, only: %i[create]
    resources :reviews, only: %i[new create]
  end

  get 'faq', to: 'pages#faq'
end
