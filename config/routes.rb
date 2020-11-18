Rails.application.routes.draw do

  get 'login' => 'login#index'
  get 'contacts' => 'contacts#new' 

  namespace :admin do
    get 'login' => 'sessions#new', :as => 'login'
  end

  namespace :admin do
    get 'logout' => 'sessions#destroy', :as => 'logout'
  end

  resources :posts, :categories, :contacts
  
  namespace :admin do
    resources :posts, :categories, :comments, :users, :sessions
  end

  resources "contacts", only: [:new, :create]

  root 'posts#index'

  resources :posts do
  	resources :comments
  end

  get 'about' => 'about#index'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
