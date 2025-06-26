Rails.application.routes.draw do
  get "health-check", to: "health_check#index"

  # Defines the root path route ("/")
  # root "posts#index"
end
