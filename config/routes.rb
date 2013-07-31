Fivesquare::Application.routes.draw do
  # Routes for the Line resource:
  # CREATE
  get '/lines/new', controller: 'lines', action: 'new', as: 'new_line'
  post '/lines', controller: 'lines', action: 'create'

  # READ
  get '/lines', controller: 'lines', action: 'index'
  get '/lines/:id', controller: 'lines', action: 'show', as: 'line'

  # UPDATE
  get '/lines/:id/edit', controller: 'lines', action: 'edit', as: 'edit_line'
  patch '/lines/:id', controller: 'lines', action: 'update'

  # DELETE
  delete '/lines/:id', controller: 'lines', action: 'destroy'
  #------------------------------

  # Routes for the Stop resource:
  # CREATE
  get '/stops/new', controller: 'stops', action: 'new', as: 'new_stop'
  post '/stops', controller: 'stops', action: 'create'

  # READ
  get '/stops', controller: 'stops', action: 'index'
  get '/stops/:id', controller: 'stops', action: 'show', as: 'stop'

  # UPDATE
  get '/stops/:id/edit', controller: 'stops', action: 'edit', as: 'edit_stop'
  patch '/stops/:id', controller: 'stops', action: 'update'

  # DELETE
  delete '/stops/:id', controller: 'stops', action: 'destroy'
  #------------------------------

  # Routes for the Station resource:
  # CREATE
  get '/stations/new', controller: 'stations', action: 'new', as: 'new_station'
  post '/stations', controller: 'stations', action: 'create'

  # READ
  get '/stations', controller: 'stations', action: 'index'
  get '/stations/:id', controller: 'stations', action: 'show', as: 'station'

  # UPDATE
  get '/stations/:id/edit', controller: 'stations', action: 'edit', as: 'edit_station'
  patch '/stations/:id', controller: 'stations', action: 'update'

  # DELETE
  delete '/stations/:id', controller: 'stations', action: 'destroy'
  #------------------------------

  # Routes for the Business resource:
  # CREATE
  get '/businesses/new', controller: 'businesses', action: 'new', as: 'new_business'
  post '/businesses', controller: 'businesses', action: 'create'

  # READ
  get '/businesses', controller: 'businesses', action: 'index'
  get '/businesses/:id', controller: 'businesses', action: 'show', as: 'business'

  # UPDATE
  get '/businesses/:id/edit', controller: 'businesses', action: 'edit', as: 'edit_business'
  patch '/businesses/:id', controller: 'businesses', action: 'update'

  # DELETE
  delete '/businesses/:id', controller: 'businesses', action: 'destroy'
  #------------------------------

  # Routes for the Neighborhood resource:
  # CREATE
  get '/neighborhoods/new', controller: 'neighborhoods', action: 'new', as: 'new_neighborhood'
  post '/neighborhoods', controller: 'neighborhoods', action: 'create'

  # READ
  get '/neighborhoods', controller: 'neighborhoods', action: 'index'
  get '/neighborhoods/:id', controller: 'neighborhoods', action: 'show', as: 'neighborhood'

  # UPDATE
  get '/neighborhoods/:id/edit', controller: 'neighborhoods', action: 'edit', as: 'edit_neighborhood'
  patch '/neighborhoods/:id', controller: 'neighborhoods', action: 'update'

  # DELETE
  delete '/neighborhoods/:id', controller: 'neighborhoods', action: 'destroy'
  #------------------------------

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
