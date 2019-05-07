# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  resources :hobbies, only: %i[index show create]

  resources :users, except: %i[index show new create edit update destroy] do
    resources :hobbies_users, only: %i[index destroy], module: :users
    resources :near_users, only: [:index], module: :users
  end

  post '/add_user' => 'hobbies#add_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
