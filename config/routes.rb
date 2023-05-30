Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  get 'friends/index'
  get 'friends/edit'
  get 'friends/show'
  resources :students
  get "add_friend" => "students#add_friend"
  get "delete_request", to: "students#delete_request" 
  get 'my_request', to: "students#my_request"
  get 'accepted_request', to: "students#accepted_request"
  get 'friend_list', to: 'friends#friend_list'
  devise_for :users, controllers: {sessions: "users/sessions", :registrations => "users/registrations", :passwords => "users/passwords"}
  get "index", to: "homes#index"
  get 'sign_in' => "homes#sign_in"
  get 'sign_up' => "homes#sign_up"
  get 'forgot_password'=> "homes#forgot_password"
  get 'home_modal' => "homes#home_modal"
  # get '/reset_password/id/edit', to: "users#reset_password"
  get 'reset_password', to: "users#reset_password"
  post '/reset_password', to: 'users#password_update'
   get 'reset_password', to: "users#reset_password"
   patch '/users/:id', to: 'users#password_update'
  # devise_for :admin_users, ActiveAdmin::Devise.config  
  resources :events
  resources :planners
  root "events#index"
  resources :venues 
  resources :address
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
