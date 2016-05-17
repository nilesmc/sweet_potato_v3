Rails.application.routes.draw do

  root :to => 'pages#home'

  get '/about', to: 'pages#about', as: 'about'
  get '/contact', to: 'pages#contact', as: 'contact'
  get '/help', to: 'pages#help', as: 'help'
  get '/terms-and-conditions', to: 'pages#terms', as: 'terms'
  get '/privacy', to: 'pages#privacy', as: 'privacy'

  # Events
  get '/events', to: 'events#index', as: 'events_index'
  post '/filter/events', to: 'events#event_filter', as: 'events_filter'
  get '/events/:slug', to: 'events#detail', as: 'event_detail'
  get '/events/new', to: 'events#new', as: 'event_new'
  post '/events/attend', to: 'events#attend', as: 'event_attend'

  # Users
  get '/signup', to: 'users#new', as: 'user_signup'
  post '/signup', to: 'users#create'
  get '/profile/:id', to: 'users#detail', as: 'users_detail'

  resources :users

  namespace :admin do
    resources :events
  end

  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  match "*path" => 'pages#error404', via: [:get, :post]

end
