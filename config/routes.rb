Rails.application.routes.draw do
  get "/about-us", to: "about#index", as: :about
  get "/sign-up", to: "registrations#new"
  post "/users", to: "registrations#create"
  get "/", to: "main#index", as: :root
end
