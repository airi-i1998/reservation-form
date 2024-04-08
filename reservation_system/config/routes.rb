Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :entries, only: [:index, :create]
      post 'line_messages', to: 'line_messages#send_flex_message'
    end
  end
end
