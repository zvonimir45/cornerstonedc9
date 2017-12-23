Rails.application.routes.draw do
  resources :microposts,          only: [:create, :destroy]

  get 'sessions/new'

  resources :users
  get '/signup',     to: 'users#new'
  get '/login',      to: 'sessions#new'
  post '/login',     to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root                'static_pages#home'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/help',    to: 'static_pages#help'
  get '/links',   to: 'static_pages#links'
  get '/members', to: 'static_pages#members'
  get '/sitemap', to: 'static_pages#sitemap'
  get '/staff',   to: 'static_pages#staff'

end
