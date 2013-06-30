ChPainLogger::Application.routes.draw do
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root :to => 'welcome#index'

  devise_for :users do
    get 'home', :to => 'home#index', :as => :user_root
    get 'attacks', :to => 'attacks#index', :as => :user_attacks
    get 'dosings', :to => 'dosings#index', :as => :user_dosings
    get 'prescriptions', :to => 'prescriptions#index', :as => :user_prescriptions
    get 'stocks', :to => 'stocks#index', :as => :user_stocks
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :attacks
  
  resources :dosings

  resources :drugs

  resources :prescriptions
    
  resources :stocks

end
