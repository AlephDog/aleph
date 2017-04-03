Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do 
  	resources :users, only: [:show,:index,:destroy]
  	resources :professors
  	resources :subjects

  	delete '/logout',to: 'sessions#destroy'
  end

  namespace :estudiantes do 
  	delete '/logout', to: 'sessions#destroy'
  end

  get '/login',to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
