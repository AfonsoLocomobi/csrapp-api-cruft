Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'bauth_status', to: 'bauth_status#status'
  get 'bauth_logout', to: 'bauth_login#logout'

  get 'states', to: 'states#index'
  get 'vehicles/types', to: 'vehicles#types'
  get 'vehicles/models', to: 'vehicles#models'

  get 'violations/amounts', to: 'violations#amounts'
  get 'violations/types', to: 'violations#types' 

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
