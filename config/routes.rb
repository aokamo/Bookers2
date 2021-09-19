Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'

  resources :books, only: [:new, :create, :index, :edit, :update, :show, :destroy]

  resources :users, only: [:new, :edit, :index, :show, :update,]

end
