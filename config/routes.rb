Rails.application.routes.draw do
  get 'static/index'

  resources :update_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
