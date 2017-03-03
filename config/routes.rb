Rails.application.routes.draw do
  get 'sessions/new'

  get 'welcome/index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :tasks

  root 'welcome#index'
end
