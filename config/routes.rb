Rails.application.routes.draw do
  root 'static#index'
  get 'static/index'


  resources :update_items
  get 'static/sport'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
