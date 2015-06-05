Rails.application.routes.draw do
  get 'activity/index'
  get 'activity/new'
  get 'activity/create'
  get 'activity/destroy'
  get 'activity/edit'
  get 'activity/show'
  get 'activity/index'
  get 'role/index'
  get 'role/new'
  get 'role/create'
  get 'role/destroy'
  get 'role/edit'
  get 'role/show'
  get 'task/index'
  get 'task/new'
  get 'task/create'
  get 'task/destroy'
  get 'task/edit'
  get 'task/show'
  get 'projects/index'
  get 'projects/new'
  get 'projects/create'
  get 'projects/destroy'
  get 'projects/edit'
  get 'projects/show'
  get 'clients/index'
  get 'clients/new' #in process
  get 'clients/create'
  get 'clients/destroy'
  get 'clients/edit'
  get 'clients/show'



  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :clients
  resources :projects
end
