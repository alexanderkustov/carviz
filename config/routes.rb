Carvizy::Application.routes.draw do
#com parte facebook
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  devise_scope :user do
    get "sign_in", :to => "devise/sessions#new"
  end
  #nesting de users em cars
  resources :users do
  	resources :cars
  end

  resources :profiles

  authenticated :user do
    root :to => 'home#index'
  end

  root :to => "home#index"
end