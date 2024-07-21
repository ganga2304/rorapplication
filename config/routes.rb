Rails.application.routes.draw do
  root "mainpage#home"
  resources :courses
  get "signup" , to: "users#new"
  resources :users, except: [:new]
end
