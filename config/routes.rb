Rails.application.routes.draw do
  resources :people do 
    collection do 
      get "search"
    end
  end
  root "home#index"
  
end
