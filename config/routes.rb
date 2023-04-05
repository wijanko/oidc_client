Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/afri", to: "oidc_clients#index"

  get "/afri/authorize", to: "oidc_clients#authorize"

  get '/auth/:provider/callback', to: "oidc_clients#callback"
  get '/auth/failure', to: 'oidc_clients#failure'
end
