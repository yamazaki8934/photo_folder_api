Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  namespace :api do
		namespace :v1, default: {format: :json} do
      resources :stars, only: [:index, :create]
      resources :photos, only: [:index, :create]
    end
  end
end
