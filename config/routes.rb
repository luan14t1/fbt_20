Rails.application.routes.draw do
  namespace :admin do
    root to: "home#index"
    resources :categories
  end

  root "static_pages#home"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  resources :users

end
