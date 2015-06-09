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

  get 'projects/index'#done
  get 'projects/new'#done
  get 'projects/destroy'#done - unused
  get 'projects/edit'#done
  get 'projects/show'#done
  
  get 'clients/index'#done
  get 'clients/new' #done
  get 'clients/create' #done - unused
  get 'clients/destroy'#done
  get 'clients/edit'#done
  get 'clients/show'#done



  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :clients
  resources :projects
end
