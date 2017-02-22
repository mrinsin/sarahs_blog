Rails.application.routes.draw do


  #generates /concerts/get_events route
  resources :events do
    get :get_events, on: :collection
  end



  resources :books

  resources :concerts


  devise_for :users



  root 'welcome#index'

  get 'welcome/index'



  get 'welcome/about'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
