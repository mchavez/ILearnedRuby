School::Application.routes.draw do
  get "test_reviews/index"

  get "take_tests/index"

  devise_for :users
  root to: "home#index"

  get "take_quiz/index"
  resources :answers #, :only => [:new, :show, :index, :edit]
  resources :questions do
	get 'take_quiz', :on => :collection
  end
  resources :tests, :courses, :teachers
  resources :test_reviews

  resources :test_reviews do
    collection do
      get 'search'
    end
  end
  #root :to => 'test_reviews#index', :as => 'listing'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
    # match 'questions/:quiz_id' => 'questions#find'
	match 'tests/take_quiz/:id', :controller => 'questions', :action => 'take_quiz'
	match 'take_quiz/:id', :controller => 'questions', :action => 'take_quiz'
	match 'take_quiz/', :controller => 'tests', :action => 'index'
	#match 'test_reviews/', :controller => 'test_reviews', :action => 'index'
	
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"
  # map.connect '/questions/find', :controller => 'questions', :action => 'find'
  
  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
