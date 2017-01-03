Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'bauth_status', to: 'bauth_status#status'
  get 'bauth_logout', to: 'bauth_login#logout'
end
