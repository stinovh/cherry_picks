Rails.application.routes.draw do

  get 'payments/new'

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end

  devise_for :users, controllers: { sessions: "users/sessions", confirmations: "users/confirmations", registrations: "users/registrations", passwords: "users/passwords", unlocks: "users/unlocks" }
  get 'searches/index' => 'searches#index'

  post 'searches' => 'searches#create'

  get 'searches/:id' => 'searches#show', as: 'show_search'

  patch 'searches/:id' => 'searches#update'

  get 'profile/myproducts' => 'products#index'

  get 'products/new' => 'products#new'

  post 'products/new' => 'products#create'

  get 'profile/myproducts/:product_id/edit' => 'products#edit'

  patch 'profile/myproducts/:product_id/edit' => 'products#update'

  delete 'products/remove' => 'products#destroy'

  get 'products/:name' => 'products#show', as: "show_product"

  devise_for :companies, controllers: { sessions: "companies/sessions", confirmations: "companies/confirmations", registrations: "companies/registrations", passwords: "companies/passwords", unlocks: "companies/unlocks" }
  get 'profile/update' => 'companies#edit'
  patch 'profile/update' => 'companies#update'
  get 'profile' => 'companies#show'

  root 'pages#index'
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
