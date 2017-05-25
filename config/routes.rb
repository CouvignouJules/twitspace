Rails.application.routes.draw do
  resources :like
  resources :comments
  devise_for :users
  resources :users, :only => [:show]
  resources :tweets, only: [:show, :new, :create] do
  	resources :comments, only: [:create]
  end
  patch 'tweets/like/:id' => 'tweets#like', as: :tweets_like
  patch 'tweets/unlike/:id' => 'tweets#unlike', as: :tweets_unlike
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"

  #Index où se situeront les photos
  root to: "tweets#index"
  namespace :api_v1 do
    resources :tweets, only: [:index, :show]
    resources :comments, only: [:create]
    resources :likes, only: [:create]
    resources :my_photos, only: [:index]
  end
end