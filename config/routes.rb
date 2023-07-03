Rails.application.routes.draw do
  get "/about", to: "about#index", as: :about

  get "/sign_up", to: "registrations#new"   # gets the sign-up form
  post "/sign_up", to: "registrations#create" # creates a user

  get "/sign_in", to: "sessions#new"        # gets the login form
  post "/sign_in", to: "sessions#create"    # logs in user

  delete "/logout", to: "sessions#destroy"

  get "/password", to: "passwords#edit", as: :edit_password
  patch "/password", to: "passwords#update"

  get "/password/reset", to: "password_resets#new"
  post "/password/reset", to: "password_resets#create"

  get "/password/reset/edit", to: "password_resets#edit"
  patch "/password/reset/edit", to: "password_resets#update"

  get "/", to: "main#index", as: :root
end
