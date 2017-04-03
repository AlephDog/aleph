Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  namespace :admin do 
  	resources :users, only: [:show,:index,:destroy]
  	resources :professors
  	resources :subjects

  	delete '/logout_user',to: 'sessions#destroy'
  end

  namespace :estudiantes do 
  	delete '/logout_user', to: 'sessions#destroy'
  	delete '/logout_professor', to: 'professor_sessions#destroy'

  namespace :profesor do 
  	delete '/logout_professor', to: 'professor_sessions#destroy'
  end

  get '/login_user',to: 'sessions#new'
  get '/login_professor',to: 'professor_sessions#new'
  
  post '/login_user', to: 'sessions#create'
  post '/login_professor', to: 'professor_sessions#create' 
end
