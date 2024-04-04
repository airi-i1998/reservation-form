Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :entries, only: [:index, :show, :create, :destroy]
    end
  end
end
