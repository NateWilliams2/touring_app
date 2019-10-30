Rails.application.routes.draw do
  get "sessions/new"
  get "users/new"
  get "/home", to: "home#home", as: :home
  get "/finances", to: "finances#finances", as: :finances
  get "/calendar", to: "calendar#calendar", as: :calendar
  get "/band", to: "band#band", as: :band
  root "home#home"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
