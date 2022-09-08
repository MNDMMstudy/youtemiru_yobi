Rails.application.routes.draw do
  
   get '/' => 'homes#top'
   get '/about' => 'homes#about'
  
  namespace :admin do
    get '/' => 'homes#top'
    resources :genres, only: [:new, :create, :edit, :update, :index]
    resources :reports, only: [:index, :show, :edit, :update]
    resources :users, only: [:index, :show, :edit, :update]
    resources :comments, only: [:index, :show, :edit, :update]
    resources :youtes, only: [:index, :show, :edit, :update]
  end


  namespace :user do
    
    resources :favorites, only: [:new, :create, :edit, :update, :index, :show, :destroy]
    resources :send_comments, only: [:new, :create, :edit, :update, :index, :show]
    resources :resived_comments, only: [:new, :create, :edit, :update, :index, :show]
    resources :youtes, only: [:new, :create, :edit, :update, :index, :show]
  end
 
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   get "/admin/login" => "admin/user_sessions#new"
  namespace :admin do
    resources :user_sessions, only: [:create, :destroy]
    resources :dashboards
  end
end
