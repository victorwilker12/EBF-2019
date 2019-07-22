Rails.application.routes.draw do
  resources :students
  
  get 'backsystem/index'
  # devise_for :users
  devise_for :users, path: '', path_names: { 
    sign_in: 'login', 
    sign_out: 'logout'
  }

  root to: 'backsystem#index'
  get '/certificate/:id',  to: 'students#certificate', :as => 'pdf_certificate'
  get '/report/:id', to: 'students#report', :as => 'pdf_report'
   get '/laranja1', to: 'students#laranja1', :as => 'laranja1_report'
   get '/l2', to: 'students#l2', :as => 'l2'
   get '/r1', to: 'students#r1', :as => 'r1'
   get '/r2', to: 'students#r2', :as => 'r2'
   get '/v1', to: 'students#v1', :as => 'v1'
   get '/v2', to: 'students#v2', :as => 'v2'
   get '/a1', to: 'students#a1', :as => 'a1'
   get '/a2', to: 'students#a2', :as => 'a2'
    get '/az', to: 'students#az', :as => 'az'
     get '/ve', to: 'students#ve', :as => 've'
  
end
