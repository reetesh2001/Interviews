Rails.application.routes.draw do
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete 'logout', to: 'sessions#destroy'

  root 'homepages#index'
  
  resources :hrs do
    resources :candidates
    resources :employees
    resources :intervs
  end

end
