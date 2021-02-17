Rails.application.routes.draw do
  get 'events/index'
  resources :users, only: %i[new create show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :sessions, only: %i[new create destroy]

  # post '/sign_in', to: 'sessions#create'
  # get '/sign_in', to: 'sessions#new'
  # delete '/logout', to: 'sessions#destroy'
end
