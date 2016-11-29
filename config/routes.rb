# link l'url et les controllers

Rails.application.routes.draw do

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks

  get "/mytasks" => "users#show"

  root "users#show"
end
