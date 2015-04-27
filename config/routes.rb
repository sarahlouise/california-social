Rails.application.routes.draw do
root "static_pages#home"

# ======= Static Pages =======
  get 'static_pages/about'
  get 'static_pages/home'
  get 'static_pages/welcome'
  # ======= Supper Club Routes ======= 
  get "supperclubs/" => "supperclubs#index", as: :all_supperclubs
  get "supperclubs/new" => "supperclubs#new", as: :new_supperclub
  get "supperclubs/:id" => "supperclubs#show", as: :supperclub
  post "supperclubs/" => "supperclubs#create"
  get "supperclubs/:id/edit" => "supperclubs#edit", as: :edit_supperclub 
  patch "supperclubs/:id" => "supperclubs#update", as: :update_supperclub
  delete "supperclubs/:id" => "supperclubs#destroy", as: :delete_supperclub

# ======= Event Roots ======= 
  get "events/" => "events#index"
  get "supperclubs/:id/events/new" => "events#new", as: :new_supperclub_event
  post "supperclubs/:id/events" => "events#create", as: :create_supperclub_event
  get "supperclubs/:supperclub_id/events/:id" => "events#show", as: :supperclub_event
  get "supperclubs/:supperclub_id/events/:id/edit" => "events#edit", as: :edit_supperclub_event
  patch "supperclubs/:supperclub_id/events/:id" => "events#update", as: :update_supperclub_event
  delete "supperclubs/:supperclub_id/events/:id" => "events#destroy", as: :delete_supperclub_event

# ======= Users and Auth Routes ======= 
post "users" => "users#create"
get "signup" => "users#new", as: :user
get "profile/:id" => "users#show", as: :profile


# ======= Sessions ROUTES ======= 
  get '/login' => 'sessions#new' 
  post '/login' => 'sessions#create' 
  delete '/logout' => 'sessions#destroy'

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
