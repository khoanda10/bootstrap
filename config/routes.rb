Rails.application.routes.draw do
  resources :users, except: [:new]
  resources :articles
  # get 'page/home'
  root 'page#home'

  get 'signup', to: 'users#new'
  # post 'users', to: 'users#create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
end