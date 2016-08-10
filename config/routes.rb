Rails.application.routes.draw do
  root to: 'pages#home'

  resources :movies, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end
end
