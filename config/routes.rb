Rails.application.routes.draw do

  get 'contacts' => 'contacts#new' 
  resources :posts, :categories, :contacts
  
  namespace :admin do
    resources :posts, :categories, :comments, :users
  end

  resources "contacts", only: [:new, :create]

  root 'posts#index'

  

  get 'about' => 'about#index'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
