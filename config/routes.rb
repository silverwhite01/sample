Rails.application.routes.draw do
<<<<<<< HEAD
  get 'sessions/new'
=======
  root   'static_pages#home'
>>>>>>> basic-login
  get 'users/new'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  get '/contact' => 'static_pages#contact'
  get '/help' => 'static_pages#help'
  get '/about' => 'static_pages#about'
  get '/home' => 'static_pages#home'
  root 'static_pages#home'
  get '/signup'  => 'users#new'
<<<<<<< HEAD
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
=======
  get    '/home',    to: 'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
>>>>>>> basic-login
  resources :users
end
