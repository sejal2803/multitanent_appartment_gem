Rails.application.routes.draw do
  resources :projects
  devise_for :users
  resources :posts
  # root to: "posts#index"
  root to: "projects#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
