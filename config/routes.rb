Rails.application.routes.draw do
  
  devise_for :users
  root to: "welcome#index"

  get "/novo-link", to: "links#new", as: :new_link
  post "/novo-link", to: "links#create", as: false
  
  get "/novo-uplike/:id", to: "likes#uplike", as: :new_uplike
  get "/novo-downlike/:id", to: "likes#downlike", as: :new_downlike

end
