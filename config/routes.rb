Rails.application.routes.draw do
  root "home#index"
  resources :uploads, only: [:create]
end
