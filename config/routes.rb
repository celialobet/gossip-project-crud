Rails.application.routes.draw do
  root 'gossips#index'
  get '/gossips', to: 'gossips#index'
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'
  get '/welcome/:user_name', to: 'pages#welcome'
  get '/user/:id', to: 'users#show'
  resources :gossips
  resources :cities, only: [:show]
  resources :gossips do
    resources :comments
  end
  resources :users
end
