Carvizy::Application.routes.draw do
  #com parte facebook, sem o mega login
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  devise_scope :user do
    get "sign_in", :to => "devise/sessions#new"
  end
  #nesting de users em cars
  resources :users do
  	resources :cars
  end
  match "/all_cars", :to => "cars#all_cars"

  resources :profiles

  authenticated :user do
    root :to => 'home#index'
  end

  root :to => "home#index"
end