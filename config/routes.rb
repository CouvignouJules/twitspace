Rails.application.routes.draw do
  resources :tweets, only: [:show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"

  #Index où se situeront les photos
  root to: "tweets#index"
end
