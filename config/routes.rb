Rails.application.routes.draw do

  devise_for :users,
    controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
    }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "divorces/etat_civil/new", to: "divorces#new_etat_civil", as: :etat_civil
  patch "divorces/etat_civil/update", to: "divorces#update_etat_civil", as: :update_etat_civil
  get "divorces/revenue/new", to: "divorces#new_revenue", as: :revenue
  patch "divorces/revenue/update", to: "divorces#update_revenue", as: :update_revenue
  get "divorces/charge/new", to: "divorces#new_charge", as: :charge
  patch "divorces/charge/update", to: "divorces#update_charge", as: :update_charge

  resources :divorces do
    resources :documents do
      collection do
        get "etat_civil", to: "documents#etat_civil"
        get "charges", to: "documents#charges"
        get "revenus", to: "documents#revenus"
      end
    end
  end
end
