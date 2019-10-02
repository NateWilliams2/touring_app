Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/finances'
  get 'static_pages/calendar'
  get 'static_pages/map'
  root 'static_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end