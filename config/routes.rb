Rails.application.routes.draw do
  get '/login/:username', to: 'users#login'
  post '/addworkout/:id', to: 'users#addworkouts'
  delete '/user_workouts/:username', to: 'users#delete_workout'
  
  resources :workouts
  resources :user_workouts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
