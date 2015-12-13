Rails.application.routes.draw do

  namespace :admin do
    resources :events

  end

  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  match "*path" => 'pages#error404', via: [:get, :post]

end
