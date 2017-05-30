Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   get "divorces/:id", to: "divorces#show", as: :recap
   get "divorces/new/:etatcivil_id", to: "divorces#new", as: :etatcivil
   post "divorces/:etatcivil", to: "divorces#create"
end
