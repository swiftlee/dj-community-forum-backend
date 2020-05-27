# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  resources :posts, only: [:index] # allows us to access the route for posts publicly
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
