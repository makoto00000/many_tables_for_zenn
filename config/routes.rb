Rails.application.routes.draw do
  root 'articles#index'
  get '/post', to: 'articles#new'
  resources :articles
end
