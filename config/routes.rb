Rails.application.routes.draw do

  get 'factories/new'

  get 'factories/show'

  root 'manufacturers#index'

  resources :manufacturers do
    resources :car_models
    resources :factories
  end

#                      Prefix Verb   URI Pattern                                                   Controller#Action
#               factories_new GET    /factories/new(.:format)                                      factories#new
#              factories_show GET    /factories/show(.:format)                                     factories#show
#                        root GET    /                                                             manufacturers#index
#     manufacturer_car_models GET    /manufacturers/:manufacturer_id/car_models(.:format)          car_models#index
#                             POST   /manufacturers/:manufacturer_id/car_models(.:format)          car_models#create
#  new_manufacturer_car_model GET    /manufacturers/:manufacturer_id/car_models/new(.:format)      car_models#new
# edit_manufacturer_car_model GET    /manufacturers/:manufacturer_id/car_models/:id/edit(.:format) car_models#edit
#      manufacturer_car_model GET    /manufacturers/:manufacturer_id/car_models/:id(.:format)      car_models#show
#                             PATCH  /manufacturers/:manufacturer_id/car_models/:id(.:format)      car_models#update
#                             PUT    /manufacturers/:manufacturer_id/car_models/:id(.:format)      car_models#update
#                             DELETE /manufacturers/:manufacturer_id/car_models/:id(.:format)      car_models#destroy
#      manufacturer_factories GET    /manufacturers/:manufacturer_id/factories(.:format)           factories#index
#                             POST   /manufacturers/:manufacturer_id/factories(.:format)           factories#create
#    new_manufacturer_factory GET    /manufacturers/:manufacturer_id/factories/new(.:format)       factories#new
#   edit_manufacturer_factory GET    /manufacturers/:manufacturer_id/factories/:id/edit(.:format)  factories#edit
#        manufacturer_factory GET    /manufacturers/:manufacturer_id/factories/:id(.:format)       factories#show
#                             PATCH  /manufacturers/:manufacturer_id/factories/:id(.:format)       factories#update
#                             PUT    /manufacturers/:manufacturer_id/factories/:id(.:format)       factories#update
#                             DELETE /manufacturers/:manufacturer_id/factories/:id(.:format)       factories#destroy
#               manufacturers GET    /manufacturers(.:format)                                      manufacturers#index
#                             POST   /manufacturers(.:format)                                      manufacturers#create
#            new_manufacturer GET    /manufacturers/new(.:format)                                  manufacturers#new
#           edit_manufacturer GET    /manufacturers/:id/edit(.:format)                             manufacturers#edit
#                manufacturer GET    /manufacturers/:id(.:format)                                  manufacturers#show
#                             PATCH  /manufacturers/:id(.:format)                                  manufacturers#update
#                             PUT    /manufacturers/:id(.:format)                                  manufacturers#update
#                             DELETE /manufacturers/:id(.:format)                                  manufacturers#destroy

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
