Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  

  resources :articles  do
  	resources  :comments
  end

  ##TELLS RAILS TO MAP THE ROOT OF THE APPLICATION TO THIS CONTROLLER'S METHOD.
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
