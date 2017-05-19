Rails.application.routes.draw do
  resources :votes
  resources :like
  resources :comments
  devise_for :users
  resources :tweets, only: [:show, :new, :create] do
  	resources :comments, only: [:create]
  	resources :votes, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"

  #Index où se situeront les photos
  root to: "tweets#index"
end
