Rails.application.routes.draw do
  get 'archives/index'
  resources :entries # resources tipically point to what would be normally models
  root to: "entries#index"
end
