DadsVision::Application.routes.draw do
  resources :jobcategories
  resources :coursenames
  resources :institutions
  resources :searches
  resources :courses
  resources :jobs
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]
 

  get "/jobs/search/:search" => "jobs#search", :as => :jobs_search
  get "/jobcategories/search/:search" => "jobcategories#search", :as => :jobcategories_search
  get "jobcategories/index"
  get "jobs/index"
  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
  get "employers/new"
  get "jobs/new"
  get "courses/new"
  get "courses/input"
  
  
  get '/img/:name', to: redirect {|params, req| "/assets/#{params[:name]}.#{params[:format]}" }
 
  root  "static_pages#home"
 
 
  match '/signup',   to: 'users#new',          via: 'get'
  match '/signin',   to: 'sessions#new',       via: 'get'
  match '/signout',  to: 'sessions#destroy',   via: 'delete'
  match '/help',     to: 'static_pages#help',  via: 'get'
  match '/about',    to: 'static_pages#about', via: 'get'

  


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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
