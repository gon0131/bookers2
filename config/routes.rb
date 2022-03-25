Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"

  resources :books, only: [:index, :show, :edit, :update, :create, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  get '/home/about' => "homes#about", as: "about"
end
