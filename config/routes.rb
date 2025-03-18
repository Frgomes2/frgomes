Rails.application.routes.draw do
  root "home#index" # Essa está funcionando!

  # Veja se existe algo assim:
  get "/index", to: "home#index"
end