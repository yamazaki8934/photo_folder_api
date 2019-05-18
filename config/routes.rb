Rails.application.routes.draw do
  namespace :api do
		namespace :v1 do
      resources :people, only: [:index, :create]
      resources :photos, only: [:index, :create] 
    end
  end
end
