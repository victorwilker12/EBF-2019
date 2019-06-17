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


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
