Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games do
    put :favourite, on: :member
  end
  resources :users, only: [:new, :create]
  resources :favourites, only: [:index, :create]
  delete "/favourites/:id" => "favourites#destroy"
end
