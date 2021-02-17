Rails.application.routes.draw do
  root 'events#index'
  resources :events
  resources :users, only: %i[new create show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :sessions, only: %i[new create destroy]
end
