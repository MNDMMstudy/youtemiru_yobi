Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   get "/admin/login" => "admin/user_sessions#new"
  namespace :admin do
    resources :user_sessions, only: [:create, :destroy]
    resources :dashboards
  end
end
