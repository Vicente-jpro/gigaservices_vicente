Rails.application.routes.draw do
  resources :people
  resources :names
  root "home#index"
  
end
