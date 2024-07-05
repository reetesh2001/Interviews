Rails.application.routes.draw do
  root 'hrs#index'
 resources :hrs
end
