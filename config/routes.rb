Rails.application.routes.draw do
  devise_for :users
  root to: 'flowers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :flowers do
    resources :bookings, only: [ :new, :create ]
   end
   resources :bookings, only: [:index]
   resources :flower_shops, only: [:show]
end
