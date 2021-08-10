Rails.application.routes.draw do

  #root 'events#index'
  get 'users/show'
  get 'events_controller/index'
  get 'events_controller/show'
  get 'events_controller/edit'
  get 'events_controller/update'
  get 'events_controller/new'
  get 'events_controller/create'
  get 'events_controller/destroy'
  root 'static_pages#index'
  get 'static_pages/index'
  get 'static_pages/secret'
  get 'static_pages/contact'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  
  

  resources :users, :only => [:show]
  #resources :events
  resources :attendances
end
