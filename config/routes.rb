Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   get "divorces/:id", to: "divorces#show", as: :recap

   get "divorces/etat_civil/new", to: "divorces#new", as: :etat_civil
   get "divorces/etat_civil/documents", to: "divorces#new", as: :etat_civil_d
   patch "divorces", to: "divorces#update"

   get "divorces/revenue/new", to: "divorces#new", as: :revenue
   get "divorces/revenue/documents", to: "divorces#new", as: :revenue_d

   get "divorces/charge/new", to: "divorces#new", as: :charge
   get "divorces/charge/documents", to: "divorces#new", as: :charge_d

end
