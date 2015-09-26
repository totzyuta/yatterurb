Rails.application.routes.draw do
  root "posts#index"
  match "/auth/:provider/callback" => "sessions#create", :via => [:get, :post]
  match "/signout" => "sessions#destroy", :via => [:get, :delete]
end
