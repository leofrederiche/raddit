Rails.application.routes.draw do
  
  get "/", to: "welcome#index", as: :root

  get "/novo-link", to: "link#new", as: :new_link
  post "/novo-link", to: "link#create", as: false

end