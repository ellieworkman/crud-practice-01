Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/countries", to: "countries#index"

  get "/countries/new", to: "countries#new"
  post "/countries", to: "countries#create"

  get "/countries/:id/edit", to: "countries#edit"
  get "/countries/:id", to: "countries#show"

  patch "/countries/:id", to: "countries#update"

  delete "/countries/:id", to: "countries#destroy"

end



