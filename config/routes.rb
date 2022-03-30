Rails.application.routes.draw do
  resources :names
  root "home#index"
  
end
