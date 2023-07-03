Rails.application.routes.draw do
  get "/about", to: "about#index", as: :about
  get "/sign_up", to: "registrations#new"
  post "/sign_up", to: "registrations#create"
  get "/", to: "main#index", as: :root
end
