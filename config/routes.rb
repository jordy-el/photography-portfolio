Rails.application.routes.draw do

  # Clearance Routes
  resource :session, controller: "clearance/sessions", only: [:create]

  get "/sign_in", to: "clearance/sessions#new", as: :sign_in
  delete "/sign_out", to: "clearance/sessions#destroy", as: :sign_out

  # App Routes
  root 'pages#home'

  constraints Clearance::Constraints::SignedIn.new do
    get 'admin', to: 'admin#index', as: :admin
    patch 'admin', to: 'admin#update'

    scope 'admin' do
      resources :samples, only: [:edit, :update]
      resources :parallaxes, only: [:edit, :update]
    end
  end

  constraints Clearance::Constraints::SignedOut.new do
    get 'admin', to: 'clearance/sessions#new'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
