Rails.application.routes.draw do
  resources :students
  get 'backsystem/index'
  # devise_for :users
  devise_for :users, path: '', path_names: { 
    sign_in: 'login', 
    sign_out: 'logout'
  }
  #controller: { sessions: 'user/sessions' }, skip: [ :registration ]
  root to: 'backsystem#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
