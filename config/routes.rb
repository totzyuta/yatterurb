Rails.application.routes.draw do
  root "posts#index"
  resources :posts
  # get "posts#new"
  # post "posts#create"
  match "/auth/:provider/callback" => "sessions#create", :via => [:get, :post]
  match "/signout" => "sessions#destroy", :via => [:get, :delete]
end
