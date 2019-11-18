Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Test Private and Public Routes
  get 'private/hello'
  get 'public/hello'

  namespace :api do

    namespace :v1 do

      resources :users, only: [:index, :create, :show, :update]

      resources :groups, only: [:index, :create, :show] do

        resources :workouts, only: [:index, :show, :create]

        resources :messages, only: [:index, :create]

        resources :penalties, only: [:index, :create, :update]

        resources :goals, only: [:index, :create, :update]

      end

    end

  end

end
