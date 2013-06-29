ChPainLogger::Application.routes.draw do
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root :to => 'welcome#index'

  resources :attacks, :only => [ :index, :create ] do
    put :finish, :on => :member
    put :unifinish, :on => :member
    get :done, :on => :collection
  end

  resources :prescriptions, :only => [ :index, :create ] do
    put :finish, :on => :member
    put :unifinish, :on => :member
    get :done, :on => :collection
  end

  resources :drugs, :only => [ :index, :create ] do
    put :finish, :on => :member
    put :unifinish, :on => :member
    get :done, :on => :collection
  end

  resources :dosings, :only => [ :index, :create ] do
    put :finish, :on => :member
    put :unifinish, :on => :member
    get :done, :on => :collection
  end

  resources :stocks, :only => [ :index, :create ] do
    put :finish, :on => :member
    put :unifinish, :on => :member
    get :done, :on => :collection
  end
end
