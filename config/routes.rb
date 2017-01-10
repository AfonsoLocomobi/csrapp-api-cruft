Rails.application.routes.draw do
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'status', to: 'status#status'
  get 'login', to: 'login#login'
  get 'logout', to: 'logout#logout'

  get 'states', to: 'states#index'
  get 'vehicles/types', to: 'vehicles#types'
  get 'vehicles/models', to: 'vehicles#models'
  get 'forms_of_payment', to: 'forms_of_payment#index'

  get 'violations/amounts', to: 'violations#amounts'
  get 'violations/types', to: 'violations#types'

  post 'login', to: 'session#login'
  post 'logout', to: 'session#logout'

  get 'cc_employees/find/by', to: 'cc_employees#find'

  resources :cc_employees
  resources :vehicles
  resources :violations

  resources :cc_employees do
    resources :violations
    resources :vehicles
  end

  resources :assignments
  resources :group_accounts

#  resources :violation_amounts
#  resources :violation_types
#  resources :employee_supplements
#  resources :vehicle_models
#  resources :vehicle_types
#  resources :employees
#  resources :badges
#  
#

end
