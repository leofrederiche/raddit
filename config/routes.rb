Rails.application.routes.draw do
  
  devise_for :users
  root to: "welcome#index"

  get "/novo-link", to: "links#new", as: :new_link
  post "/novo-link", to: "links#create", as: false

end
