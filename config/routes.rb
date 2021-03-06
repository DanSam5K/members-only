Rails.application.routes.draw do
  root "posts#index"
  devise_for :members, :controllers => { registrations: 'registrations' }
  resources :posts, only: [:new, :create, :index]
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
