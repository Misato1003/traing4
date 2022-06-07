Rails.application.routes.draw do
  get 'users/likes'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  resources :posts
  
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
  
  get "users/:id/likes" => "users#likes"
  resources :users do
    member do
      get :likes
    end
  end
end
