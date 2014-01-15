IrIaauEduKg::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'page#home'

  match '/home',          to: 'page#home',     via: 'get'
  match '/about',         to: 'page#about',     via: 'get'
  match '/faculty',       to: 'page#faculty',     via: 'get'
  match '/undergraduate', to: 'page#undergraduate',     via: 'get'
  match '/graduate',       to: 'page#graduate',     via: 'get'
  match '/exchange',      to: 'page#exchange',     via: 'get'
  match '/contacts',      to: 'page#contacts',     via: 'get'
  match '/news/:id',      to: 'page#news',     via: 'get'


  match '/admin',      to: 'admin#index',     via: 'get'

  # Example of regular route:
  post '/admin/login' => 'admin#index'
  post '/admin/news/edit' => 'admin#index'
  get 'admin/:param' => 'admin#index'
  get 'admin/:param/:value' => 'admin#index'
  get 'admin/:param/:value/:operation' => 'admin#index'

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
