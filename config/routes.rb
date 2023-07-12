Rails.application.routes.draw do
  resources :comments
  get 'home/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # resources :posts, except: [:index]
  root "home#index"
  # get '/posts', to: 'posts#index', as: 'user_root'
  resources :posts
end
