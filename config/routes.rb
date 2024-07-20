Rails.application.routes.draw do
  root "mainpage#home"
  resources :courses
end
