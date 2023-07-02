Rails.application.routes.draw do
  get "/about-us", to: "about#index", as: :about
  get "/", to: "main#index", as: :root
end
