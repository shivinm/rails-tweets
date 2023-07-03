Rails.application.routes.draw do
  get "/about", to: "about#index", as: :about

  get "/sign_up", to: "registrations#new"   # gets the sign-up form
  post "/sign_up", to: "registrations#create" # creates a user

  get "/sign_in", to: "sessions#new"        # gets the login form
  post "/sign_in", to: "sessions#create"    # logs in user

  delete "/logout", to: "sessions#destroy"

  get "/", to: "main#index", as: :root
end
