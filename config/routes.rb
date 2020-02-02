Rails.application.routes.draw do
  get 'landmarks/edit'
  get 'landmarks/index', :to => "landmarks#index", :as => "landmark"
  get '/landmarks/new', :to => "landmarks#new", :as => "new_landmark"
  get 'landmarks/show'
  post '/landmarks/create', :to =>"landmarks#create", :as => "create_landmark"
  get 'landmarks/update'
  get 'locations/edit'
  get '/locations/index', :to => "locations#index", :as => "locations"
  get '/locations/new', :to => "locations#new", :as => "new_location"
  post '/locations/create', :to => "locations#create", :as => "create_location"
  get 'locations/show'
  resources :places, except: [:update, :edit, :destroy]
root 'places#index'
  get 'places/edit'
  get 'places/update'
  get 'places/index'
  get 'places/new'
  get 'places/create'
  get '/products/new', :to => "products#new", :as => "new_products"
  get '/products/index', :to => 'products#index', :as => "products"
  get '/products/edit/:id', :to => 'products#edit', :as => "edit_products" 
  patch '/products/update/:id', :to => "products#update", :as => "update_products"
  post 'products/create', :to => "products#create", :as => "create_products"
  # get 'products/some_date', :to => "products#some_date", :as => "some_date_products"
  get '/customers/index', :to => "customers#index", :as => "customers"
  get '/customers/show/:id', :to => "customers#show", :as => "customer_orders"
  get '/customers/new', :to => "customers#new", :as => "new_customer"
  get '/customers/user', :to => "customers#user", :as => "user_customer"
  get '/customers/edit/:id', :to => "customers#edit", :as => "edit_customer"
  patch '/customers/update/:id', :to => "customers#update", :as => "update_customer"
  post '/customers/create', :to => "customers#create", :as => "create_customer"
  # get 'customers/show/:id', :to => 'customers#show', :as => 
  get '/orders/new', :to => "orders#new", :as => 'new_orders'
  post '/orders/create', :to => "orders#create", :as => 'create_order'
  # get 'orders/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users/new', :to => "users#new", :as => "new_users"
  get '/users/show', :to => "users#show", :as => "show_users"
  # get 'users/edit'
  # get 'users/update'
  # get 'users/create'
end
