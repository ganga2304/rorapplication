Rails.application.routes.draw do
  resources :courses, only: [:show,:index,:new,:create]
end
