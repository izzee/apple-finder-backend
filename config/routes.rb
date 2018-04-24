Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :folders
      resources :documents
    end
  end
end
