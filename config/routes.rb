Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Rutas para el modelo de usuarios
  resources :users
  # Rutas para LINK base
  root 'static_pages#home'
  # Rutas para paginas estaticas
  get '/nosotros', to: 'static_pages#about'
  get '/contacto', to: 'static_pages#contact'
  # Rutas para la sesion 
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
 