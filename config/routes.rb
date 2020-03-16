Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :flowers, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
end
resources :doses, only: [:destroy]
  root to: 'pages#home'
end
