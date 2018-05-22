Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'welcome/index'

  #Add separate method
  get 'articles/sendMessage', to: 'articles#sendMessage' 

  resources :articles  do
  	resources  :comments
  end
  
  resources :students do 
    resources :studentgrades
  end

  ##TELLS RAILS TO MAP THE ROOT OF THE APPLICATION TO THIS CONTROLLER'S METHOD.
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
