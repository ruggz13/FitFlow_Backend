Rails.application.routes.draw do
  resources :user_workouts
  resources :workouts
  get '/login/:username', to: 'users#login'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
