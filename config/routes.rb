Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: "pages#home", as: :user_root
  end
  root to: "pages#home"

  resource :profile, only: %i[edit update index]

  resources :dogs, only: %i[index show edit update] do
    resources :likes, only: %i[create]
  end

  resources :matches, only: %i[index show] do
    resources :messages, only: %i[create]
    resources :meetings, only: %i[new create destroy]
  end

  resources :meetings, only: %i[index]

  resources :places, only: %i[index new create show] do
    resources :walks, only: %i[create destroy]
    resources :reviews, only: %i[new create index]
  end
  resources :reviews, only: %i[destroy], as: :delete_review
  get 'all_my_review', to: 'reviews#show'
  get 'home_user', to: "pages#home_user"
  get 'home', to: 'pages#home'
  get 'faq', to: 'pages#faq'
end
