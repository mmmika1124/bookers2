Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  root to: 'homes#top'
  get 'home/about'=> 'homes#about', as: 'about'
  devise_for :users
  resources :books, only: [:new, :index, :show, :edit]
  resources :users, only: [:index, :show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
