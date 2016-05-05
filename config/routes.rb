Rails.application.routes.draw do
  root to: "tools#index"

  namespace :admin do
    # resources :tools, only: [:update]
    # put "/admin/tools/:id", to: "tools#update", as: :tool
    patch "/admin/tools/:id", to: "tools#update", as: :tool
    get "/tools/new", to: "tools#new"
    post "/tools", to: "tools#create"
    get "/tools", to: "tools#index"
    get "tools/:id/edit", to: "tools#edit", as: :tool_edit
    get "/dashboard", to: "users#show"
  end

  get "/tools", to: "tools#index"
  post "/login", to: "sessions#create"
  get "/login", to: "sessions#new"
  get "/tools/:id", to: "tools#show", as: :tool
  get "/users/new", to: "users#new", as: :new_user
  post "/users", to: "users#create"
  get "/users/edit", to: "users#edit", as: :edit_user
  put :users, to: "users#update", as: :user
  get "/users", to: "users#show", as: :dashboard
  delete "users/logout", to: "sessions#destroy", as: :logout
  get "/cart", to: "carts#show"
  get "/orders", to: "orders#index"
  post "/orders", to: "orders#create"
  get "/orders/:id", to: "orders#show", as: :order
  post "/tools/:id", to: "cart_tools#create"
  delete "/cart_tools/:id", to: "cart_tools#destroy", as: :cart_tool
  get "/cart/login", to: "sessions#new"
  put "/cart", to: "carts#update"
  get "/:category_name", to: "categories#view"
end
