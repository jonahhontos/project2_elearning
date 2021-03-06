Rails.application.routes.draw do

  get 'student/new' => "students#new", as: :new_student
  get 'student/:id' => "students#show", as: :student
  post 'students' => "students#create", as: :students

  resources :subjects

  resources :exercises
  get 'exercises/new/:id' => 'exercises#new'
  get 'exercises/:id/next' => 'exercises#next', as: :next_exercise
  patch 'exercises/:id/next' => 'exercises#next'

  resources :concepts
  get 'concepts/new/:id' => 'concepts#new'
  get 'concepts/:id/next' => 'concepts#next', as: :next_concept

  resources :courses
  get 'courses/:id/enroll' => 'courses#enroll', as: :course_enroll
  get 'courses/:id/drop' => 'courses#drop', as: :drop_course
  get 'courses/:id/continue' => 'courses#continue', as: :continue_course
  # get 'instructors' => "instructors#index"
  # get 'instructors/new' => 'instructors#new', as: :new_instructor
  resources :instructors
  root 'welcome#index'

  get 'logout' => 'sessions#destroy', as: :logout
  resources :sessions, only: [:new, :create]
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
