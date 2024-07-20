Rails.application.routes.draw do
  resources :courses, only: [:show]
end
