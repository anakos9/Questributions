Rails.application.routes.draw do
  resources :posts
  devise_for :users
  resources :details
  resources :tasks
  resources :projects
  get "users/awards" => 'users#awardindex'
  get "users/editaward" => 'users#editaward'
  resources :users
  

  post "/tasks/id" => "tasks#edit", as: :edit

  devise_scope :user do
    authenticated :user do
      root 'details#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # User related routes
  




end
