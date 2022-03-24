Rails.application.routes.draw do
  get '/dashboard', to: 'users#dashboard'
  post '/edit', to: 'users#update'

  root to: "pages#home"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
