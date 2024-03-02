Rails.application.routes.draw do
  resources :user_accounts
  post "/signup_user" => "root#signup"
  post "/signup_account" => "root#signupaccount"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  get "/signup" => "root#signup1"
  get "/test" => "root#test"
  get "/index" => "root#index"
  get "/login" => "root#login"
  post "/test" => "root#test"
  root "root#index" 

end
