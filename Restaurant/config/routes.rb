Restaurant::Application.routes.draw do
  get "admin/new_menu"
  
  get "admin/view"

  get "contact/contact"

  get "menu/displayMenu"
  
  resources :bookings

  resources :subscribes
  #get "subscribes/new"
  #resources :menu
  #resources :menus
  
  get "menu/new"

  get "index/index"
  
  get "admin/edit_menu"
  
  get "menu/edit"
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  match '/menu' => 'menu#displayMenu'
  match '/index' => 'index#index'
  match '/contact' => 'contact#contact'
  match '/admin' => 'admin#view'
  match '/admins/new' => 'admin#new_menu'
  match '/admins' => 'admin#create_menu'
  match '/menus' => 'menu#create'
  match '/menus/edit/:id' => 'menu#edit'
  #match '/subscribe/:new' => 'subscribe#new'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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
  root :to => 'index#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id))(.:format)'
end
