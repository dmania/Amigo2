Rails.application.routes.draw do

#Users Controller
  root 'users#login'
 resources :users, only: [:index, :edit, :update, :show]

#Friends Controller
  # get 'friends/new' =>
  # get 'friends/index'
  # get 'friends/create'
  # get 'users/index'
  
  
  resources :friends

#Route information for Omni-Auth Log-in. Borrowed from (https://github.com/plataformatec/devise/wiki/OmniAuth:-Overview)

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  devise_scope :user do
    get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session
    get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end


  # get 'test', to: 'twilio#test'
  # get '/sms', to: 'twilio#sms'


end