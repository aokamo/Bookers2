Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'
  get 'home/about' => 'homes#show'

  resources :books, only: [:new, :create, :index, :edit, :update, :show, :destroy]

  resources :users, only: [:new, :edit, :index, :show, :update,]

  resources :profile_images, only: [:new, :create, :index, :show, :destroy]

end
