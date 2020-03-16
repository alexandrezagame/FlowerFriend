Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'flowers', to: 'flowers#index'
  get 'flowers/new', to: 'flowers#new', as: :new_flower
  post 'flowers', to: 'flowers#create'
  get 'flowers/:id', to: 'flowers#show', as: :flower
  get 'flowers/:id/bookings/new', to: 'bookings#new'
  post 'flowers/:id/bookings', to:'“bookings#create'
  get 'flowers/:id/edit', to: 'flowers#edit', as: :edit_flower
  patch 'flowers/:id', to: 'flowers#update'
  delete 'flowers/:id', to: 'flowers#destroy'
end
