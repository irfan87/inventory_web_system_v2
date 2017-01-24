Rails.application.routes.draw do
  post 'api/v1/owner_token' => 'api/v1/owner_token#create'
  namespace :api do
  	namespace :v1 do
      resources :owners do
        resources :shops
      end
  	end
  end
end
