ChPainLogger::Application.routes.draw do
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root :to => 'welcome#index'

  devise_for :users
  get 'attacks', :to => 'attacks#index', :as => :user_root
  get 'prescriptions', :to => 'prescriptions#index', :as => :user_root
  get 'drugs', :to => 'drugs#index', :as => :user_root
  get 'dosings', :to => 'dosings#index', :as => :user_root
  get 'stocks', :to => 'stocks#index', :as => :user_root

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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
