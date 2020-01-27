Rails.application.routes.draw do
  get '/products/new', :to => "products#new", :as => "new_products"
  get '/products/index', :to => 'products#index', :as => "products"
  get 'products/edit/:id', :to => 'products#edit', :as => "edit_products" 
  patch '/products/update/:id', :to => "products#update", :as => "update_products"
  get 'products/create', :to => "products#create", :as => "create_products"
  get '/customers/index', :to => "customers#index", :as => "customers"
  get '/customers/show/:id', :to => "customers#show", :as => "customer_orders"
  get '/customers/new', :to => "customers#new", :as => "new_customer"
  get '/customers/edit/:id', :to => "customers#edit", :as => "edit_customer"
  patch '/customers/update/:id', :to => "customers#update", :as => "update_customer"
  post '/customers/create', :to => "customers#create", :as => "create_customer"
  # get 'customers/show/:id', :to => 'customers#show', :as => 
  get '/orders/new', :to => "orders#new", :as => 'new_orders'
  post '/orders/create', :to => "orders#create", :as => 'create_order'
  # get 'orders/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
