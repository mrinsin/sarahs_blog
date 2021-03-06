Rails.application.routes.draw do


  #generates /concerts/get_events route
  resources :events do
    get :get_events, on: :collection
    # GET /apartments/:apartment_id/map_locations
    get 'map_location'
  end



  resources :books

  resources :concerts

  devise_for :users


  root 'welcome#index'

  get 'welcome/index'

  get 'welcome/calendar'

  get 'welcome/about'

  get 'welcome/search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
