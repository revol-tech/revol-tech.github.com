RevolTechGithubCom::Application.routes.draw do


  resources :time_trackings

#  get "messages/index"

#  get "messages/new"

#  get "messages/create"

#  get "messages/destroy"

#  get "messages/update"

match "/attendance" => 'attendances#new'
  resources :attendances

#  get "issues/new"

#  get "issues/edit"

#  get "issues/show"

#  get "issues/destroy"

#  get "issues/update"

#  get "issues/index"

#  get "issues/create"

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

get "home/revolutionaries"
get "home/services"
get "home/aboutus"
get "home/portfolio"
match "/careers" => 'career#career'
  resources :attendances
get "projects/user_info"
get "projects/index"
get "projects/developer"
get "projects/message_display"
	resources :messages
	resources :users
  resources :projects do
    resources :issues
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
      resources :homes

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
