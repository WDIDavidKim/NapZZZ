Rails.application.routes.draw do

  root to: "listings#index"

  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy", as: "destroy_user"

  get "/login", to: "sessions#new", as: "new_session"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create", as: "create_session"

  get "/listings/new", to: "listings#new", as: "new_listing"
  post "/listings", to: "listings#create"
  get "/listings/:listing_id", to: "listings#show", as: "listing"
  get "/listings/:listing_id/edit", to: "listings#edit", as: "edit_listing"
  patch "/listings/:listing_id", to: "listings#update", as: "update_user"
  delete "/listings/:listing_id", to: "listings#destroy", as: "destroy_listing"

  get "/listings/:listing_id/reservations/new", to: "reservations#new", as: "new_reservation"
  post "/listings/:listing_id/reservations", to: "reservations#create", as: "post_reservation"
  get "/listings/:id/users/:id/reservations/:id", to: "reservations#show", as: "reservation"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
