Rails.application.routes.draw do
  get 'protected', to: 'api#protected_route'

  root to: 'api#index'
end
