Rails.application.routes.draw do

  get '/signup', to: 'users#new'
  post '/users/new',to: 'users#create'
  get '/profile', to: 'users#show'

  root 'static_pages#home'

  get '/event', to: 'events#show'
  get '/create', to: 'events#new'
  post '/create',to: 'events#create'
  get '/events', to: 'events#index'

  post '/signup', to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :events, only: %i[new create index show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
