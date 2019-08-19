Rails.application.routes.draw do
  get 'user/name'
  get 'user/username'
  get 'user/password_digest'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: "islands#index"
  get '/signup', to: "users#new"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout',  to: "sessions#destroy"

  resources :islands, only: [:index]
  resources :treasures, only: [:index]
  resources :users, only: [:create]
end
