Rails.application.routes.draw do
  
  resources :people, only: [:new, :create, :show, :destroy, :index] do 
    collection do 
      get "search"
    end
  end
  root "home#index"

end
