Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  namespace :api do
		namespace :v1 do
      resources :people, only: [:index, :create]
      resources :photos, only: [:index, :create]
    end
  end
end
