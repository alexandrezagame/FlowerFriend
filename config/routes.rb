Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  patch '/bookings/:id/approve', to: 'bookings#change_status_approve', as: 'booking_approve'
  patch '/bookings/:id/decline', to: 'bookings#change_status_decline', as: 'booking_decline'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :flowers do
    resources :bookings, only: [ :new, :create ]
   end

  resources :bookings, only: [:show, :index]
  resources :flower_shops, only: [:index, :show, :new, :create]
end
