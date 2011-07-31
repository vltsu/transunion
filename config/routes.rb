Transunion::Application.routes.draw do

  #Оплата заказчиком по счёту
  match 'finances/customer_payment_bill'            => 'finances#customer_payment_bill',        :as => :customer_payment_bill
  match 'finances/customer_payment_bill/:id/edit'   => 'finances#customer_payment_bill_edit',   :as => :customer_payment_bill_edit
  match 'finances/customer_payment_bill_create'     => 'finances#customer_payment_bill_create', :as => :customer_payment_bill_create
  match 'finances/customer_payment_bill_update/:id' => 'finances#customer_payment_bill_update', :as => :customer_payment_bill_update

  #Оплата заказчиком наличными
  match 'finances/customer_payment_cash'            => 'finances#customer_payment_cash',        :as => :customer_payment_cash
  match 'finances/customer_payment_cash/:id/edit'   => 'finances#customer_payment_cash_edit',   :as => :customer_payment_cash_edit
  match 'finances/customer_payment_cash_create'     => 'finances#customer_payment_cash_create', :as => :customer_payment_cash_create
  match 'finances/customer_payment_cash_update/:id' => 'finances#customer_payment_cash_update', :as => :customer_payment_cash_update

  #Оплата заказчиком наличными
  match 'finances/income_others'            => 'finances#income_others',        :as => :income_others
  match 'finances/income_others/:id/edit'   => 'finances#income_others_edit',   :as => :income_others_edit
  match 'finances/income_others_create'     => 'finances#income_others_create', :as => :income_others_create
  match 'finances/income_others_update/:id' => 'finances#income_others_update', :as => :income_others_update

  #Оплата перевозчику безнал
  match 'finances/carrier_payment_bill'            => 'finances#carrier_payment_bill',        :as => :carrier_payment_bill
  match 'finances/carrier_payment_bill/:id/edit'   => 'finances#carrier_payment_bill_edit',   :as => :carrier_payment_bill_edit
  match 'finances/carrier_payment_bill_create'     => 'finances#carrier_payment_bill_create', :as => :carrier_payment_bill_create
  match 'finances/carrier_payment_bill_update/:id' => 'finances#carrier_payment_bill_update', :as => :carrier_payment_bill_update

  #Оплата перевозчику наличными
  match 'finances/carrier_payment_cash'            => 'finances#carrier_payment_cash',        :as => :carrier_payment_cash
  match 'finances/carrier_payment_cash/:id/edit'   => 'finances#carrier_payment_cash_edit',   :as => :carrier_payment_cash_edit
  match 'finances/carrier_payment_cash_create'     => 'finances#carrier_payment_cash_create', :as => :carrier_payment_cash_create
  match 'finances/carrier_payment_cash_update/:id' => 'finances#carrier_payment_cash_update', :as => :carrier_payment_cash_update

  #Оплата заказчиком наличными
  match 'finances/outcome_others'            => 'finances#outcome_others',        :as => :outcome_others
  match 'finances/outcome_others/:id/edit'   => 'finances#outcome_others_edit',   :as => :outcome_others_edit
  match 'finances/outcome_others_create'     => 'finances#outcome_others_create', :as => :outcome_others_create
  match 'finances/outcome_others_update/:id' => 'finances#outcome_others_update', :as => :outcome_others_update

  #Зарплата
  match 'finances/outcome_salary'            => 'finances#outcome_salary',        :as => :outcome_salary
  match 'finances/outcome_salary/:id/edit'   => 'finances#outcome_salary_edit',   :as => :outcome_salary_edit
  match 'finances/outcome_salary_create'     => 'finances#outcome_salary_create', :as => :outcome_salary_create
  match 'finances/outcome_salary_update/:id' => 'finances#outcome_salary_update', :as => :outcome_salary_update

  #Перечни платежей
  match 'finances/income_cash/:id'     => 'finances#income_cash',     :as => :income_cash
  match 'finances/income_bill/:id'     => 'finances#income_bill',     :as => :income_bill
  match 'finances/outcome_request/:id' => 'finances#outcome_request', :as => :outcome_request

  #Отчёты
  match 'reports/salary'                     => 'reports#salary_index',            :as => :salary
  match 'reports/salary_colleague_stat/:id'  => 'reports#salary_colleague_stat',   :as => :salary_colleague_stat
  match 'reports/salary_colleague_payed/:id' => 'reports#salary_colleague_payed',  :as => :salary_colleague_payed
  match 'reports/income_for_bill'            => 'reports#income_for_bill',         :as => :income_for_bill

  #JavaScript
  match 'javascripts/dynamic_drivers' => 'javascripts#dynamic_drivers'

  resources :javascripts

  resources :outcome_sections

  resources :income_sections

  resources :finances

  #Для сохранения заявки через Сохранить как
  match 'requests/create_sas' => 'requests#create_sas', :as => :create_sas

  resources :requests

  resources :payment_docs

  resources :payment_ways

  resources :payment_methods

  resources :cargo_classifications

  resources :cars

  resources :car_tonnages

  resources :car_models

  resources :car_types

  resources :customer_companies

  resources :company_faces

  resources :opfs

  resources :users

  root :to =>'index#index', :as => :home

  get "index/index"

  resources :cartypes

  resources :carrier_companies

  resources :drivers

  resources :index

  resources :reports

  match 'signin_form' => 'index#signin_form', :as => :signin_form
  match 'signin'      => 'index#signin'
  match 'signout'     => 'index#signout'

  match 'requests/:id/customer_document' => 'requests#customer_document', :as => :customer_doc
  match 'requests/:id/carrier_document' => 'requests#carrier_document',   :as => :carrier_doc

  match 'requests/:id/save_as' => 'requests#save_as', :as => :save_as

  match '/:controller(/:action(/:id))'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
