Rails.application.routes.draw do
  resources :like
  resources :comments
  devise_for :users
  resources :tweets, only: [:show, :new, :create] do
  	resources :comments, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"

  #Index où se situeront les photos
  root to: "tweets#index"
  namespace :api_v1 do
    resources :tweets, only: [:index, :show, :create]
    resources :comments, only: [:create]
    resources :likes, only: [:create]
  end
end