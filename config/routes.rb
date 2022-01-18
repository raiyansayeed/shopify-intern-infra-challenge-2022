Rails.application.routes.draw do
  Healthcheck.routes(self)
  resources :inventories
  resources :warehouses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "warehouses#index"
end
