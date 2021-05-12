Rails.application.routes.draw do
  root 'pages#home'
  get '/', to: 'pages#home'
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'
  get '/welcome/:user_name', to: 'pages#welcome'
  get '/user/:id', to: 'pages#show_author'
  resources :gossips
end
